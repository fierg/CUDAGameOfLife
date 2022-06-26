#include <cuda.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <unistd.h>

#define BLOCK_SIDE 16

typedef unsigned char ubyte;

__device__ ubyte getVal(ubyte* pboard, int rows, int columns, int x, int y)
{
    if (x >= 0 && x < columns && y >= 0 && y < rows)
        return pboard[x * columns + y];
    return 0x0;
}

__device__ int getNeighbours(int x, int y, ubyte* pboard, int rows, int columns)
{
    int num = 0;
    num += (getVal(pboard, rows, columns, x-1, y));
    num += (getVal(pboard, rows, columns, x+1, y));
    num += (getVal(pboard, rows, columns, x, y-1));
    num += (getVal(pboard, rows, columns, x, y+1));
    num += (getVal(pboard, rows, columns, x-1, y-1));
    num += (getVal(pboard, rows, columns, x-1, y+1));
    num += (getVal(pboard, rows, columns, x+1, y-1));
    num += (getVal(pboard, rows, columns, x+1, y+1));
    return num;
}

__global__ void step(int rows, int columns, ubyte* pCurrBoard, ubyte* pNewBoard)
{
    int x = blockIdx.x * BLOCK_SIDE + threadIdx.x;
    int y = blockIdx.y * BLOCK_SIDE + threadIdx.y;

    int index = x * columns + y;

    pNewBoard[index] = pCurrBoard[index];

    int neighbors = getNeighbours(x, y, pCurrBoard, rows, columns);

    // "Any live cell with fewer than two live neighbours dies as if caused by under-population."
    if (neighbors < 2)
        pNewBoard[index] = 0x0;

    // "Any live cell with more than three live neighbours dies, as if by overcrowding."
    if (neighbors > 3)
        pNewBoard[index] = 0x0;

    // "Any dead cell with exactly three live neighbours become a live cell, as if by reproduction."
    if (neighbors == 3 && !pCurrBoard[index])
        pNewBoard[index] = 0x1;
}

void generate(ubyte* pboard, int rows, int columns)
{
    for (int x = 0; x < columns; x++)
    {
        for (int y = 0; y < rows; y++)
        {
            float rnd = rand() / (float)RAND_MAX;
            pboard[x * columns + y] = (rnd >= 0.6f)? 0x1 : 0x0;
        }
    }
}

void printBoard(const char* msg, ubyte* pboard, int rows, int columns)
{
    printf("%s\n", msg);

    for (int x = 0; x < columns; x++)
    {
        for (int y = 0; y < rows; y++)
        {
            printf("%c ", pboard[x * columns + y]? 'o' : ' ');
        }
        printf("\n");
    }

}

int main(int argc, char* argv[])
{
    int generations = 1000000;
    int width = 100;
    int height = 100;

    if (argc > 1)
    {
        generations = atoi(argv[1]);
    }

    printf("Running %d generations\n", generations);

    srand(time(0));

    ubyte* pboard = (ubyte *)malloc(width * height * sizeof(ubyte));
    generate(pboard, height, width);
    printBoard("Initial Board:", pboard, height, width);

    ubyte* board;
    ubyte* newBoard;
    
    cudaMalloc((void **)&board, width * height * sizeof(ubyte));
    cudaMemcpy(board, pboard, height * width * sizeof(ubyte), cudaMemcpyHostToDevice);
    cudaMalloc((void **)&newBoard, width * height * sizeof(ubyte));
    cudaMemset(newBoard, 0x0, height * width * sizeof(ubyte));

    dim3 blocksize(BLOCK_SIDE, BLOCK_SIDE);
    dim3 gridsize(width / BLOCK_SIDE, height / BLOCK_SIDE);

    struct timeval start;
    gettimeofday(&start, NULL);

    ubyte* pcurr;
    ubyte* pnext;
    for (int gen = 0; gen < generations; gen++){
        if ((gen % 2) == 0)
        {
            pcurr = board;
            pnext = newBoard;
        }
        else
        {
            pcurr = newBoard;
            pnext = board;
        }

        step<<<gridsize, blocksize>>>(height, width, pcurr, pnext);

#ifdef PRINT_BOARDS
        cudaMemcpy(pboard, pnext, height * width * sizeof(ubyte), cudaMemcpyDeviceToHost);
		for (int i = 0; i < 24; i++) printf("\n");
		printBoard(" ", pboard, height, width);
#endif
    }

    struct timeval end;
    gettimeofday(&end, NULL);
    double t =  (end.tv_usec - start.tv_usec) / 1000.0;

    cudaMemcpy(pboard, pcurr, width * height * sizeof(ubyte), cudaMemcpyDeviceToHost);

    printBoard("Board:", pboard, height, width);
    cudaFree(board);
    cudaFree(newBoard);
    free(pboard);

    printf("Computed %d generations in %f ms\n", generations, t);

    return 0;
}