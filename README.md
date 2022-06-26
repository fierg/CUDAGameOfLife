# OpenCLGameOfLife
An CUDA C++ implementation of the Conway's Game of Life

### Build
```
nvcc -o main main.cu
```

### Run

```
./main
```

### Expected Output
```
unning 1000000 generations
Initial Board:
            o         o o o   o   o o o   o o           o         o     o       o o o o o   o   o   o       o   o   o o       o   o             o   o o     o   o o   o               o o   o           
  o         o o o o o o     o o           o               o o o o   o o   o     o   o         o o         o     o   o   o               o o       o o     o             o     o o       o     o         
      o       o     o   o   o o                 o o   o     o o       o o     o o     o   o   o   o o o       o     o   o o o         o o o   o o o       o   o     o     o   o     o   o o o o   o     
    o   o   o   o         o   o   o   o       o   o o                 o         o     o   o o   o o   o             o o   o o o     o   o o   o             o o         o o o o     o o                 
o o o               o               o     o o       o           o         o         o                           o o     o o   o o   o                             o         o o o   o o                 
            o o       o o           o     o o o       o   o     o o o   o   o   o o o         o     o o   o     o   o       o o o o o o   o o o o     o o o o o           o o o   o o   o               
o                 o   o           o   o         o   o o   o       o   o   o o o o o           o   o     o o o o o   o       o   o   o o o o o o o   o           o o   o   o       o o       o o   o o   
          o o   o o o     o         o       o   o o           o   o       o   o   o   o       o       o o       o   o o     o o o   o         o o           o     o o   o o   o     o o     o   o o o o 
o o       o     o                 o o o       o       o   o   o   o   o o o   o o       o           o       o   o o   o o o o   o o o o                 o o o   o o         o     o o o o o     o       
    o o         o o         o o     o o   o   o   o     o     o o   o     o     o   o   o   o   o   o o     o         o   o o             o o o       o o o                           o           o o o 
        o     o           o     o   o     o o           o           o       o       o   o     o   o o o o o   o       o       o o o o o o o     o   o   o o     o                       o   o o   o o   
    o       o o             o     o   o     o     o o o     o         o o   o     o   o   o o   o       o       o   o   o o       o           o             o   o   o       o     o o       o o     o   
        o       o           o o       o   o   o             o o   o o o     o   o   o     o o o   o o o o     o           o   o o       o             o     o o           o           o       o   o o   
o                 o                 o         o   o   o     o   o     o   o                 o   o o o   o           o o o o           o   o o       o     o         o     o           o         o o   o 
                  o o         o   o     o     o   o     o       o o o o             o   o   o   o     o   o     o o       o     o   o o             o     o     o o o               o o o   o     o   o 
o o     o       o     o   o   o   o     o o o   o o       o               o   o     o     o o     o o   o o o o   o o o   o o o         o       o o   o o         o   o       o       o     o       o   
      o   o o o o o   o   o o o     o         o               o   o o                 o o   o       o o o   o     o   o o o     o o             o o     o   o       o     o   o           o   o   o   o 
      o             o         o       o   o       o   o o   o   o o o       o   o       o   o   o   o o       o o   o o     o     o   o     o o                   o   o       o o   o       o o         
      o     o         o o o         o     o o     o     o o       o   o o o o   o   o o           o     o     o o   o o                                 o           o o   o             o       o o     
o     o o       o o o o     o       o   o   o o o   o o o o o           o o o     o             o   o           o o     o o o       o o   o       o         o o   o       o o o   o     o   o o   o     
  o   o o     o     o   o     o o o     o o o   o o     o o o   o o o   o           o o   o o   o   o   o   o     o             o     o o o o o   o o       o           o   o   o   o       o   o       
        o   o   o       o       o o o o   o   o o o   o           o           o o   o       o o   o         o     o o       o           o o o                   o o o     o     o   o o         o o     
    o o             o             o o o o       o o o o       o   o o     o       o o o     o   o       o o o o   o o o   o     o   o o   o     o o     o         o       o   o o     o o o   o o     o 
      o     o   o   o       o         o           o o   o   o o o   o   o o   o     o       o   o o                             o o   o       o     o o o     o     o     o o         o o o o o o       
o o o               o   o   o o         o o   o   o       o     o     o o   o o   o o   o       o     o           o       o   o o   o   o o       o o     o               o           o o   o o o       
    o o     o       o           o       o   o           o   o       o   o o o o   o o o   o o o   o o     o   o   o     o o           o                 o               o o                     o o o   
    o       o     o     o o     o       o o   o   o     o         o o o o         o o o o o       o   o o o o o o o   o       o   o o o   o o   o         o o   o         o     o   o o       o o o     
o   o       o   o o o   o o o     o         o o           o o       o       o             o   o o o o   o o o   o   o         o o o           o o   o o     o   o     o                               o 
        o   o                   o     o o       o           o o     o     o   o               o o o       o   o o       o o     o o         o o   o         o o           o   o                   o   o 
  o o     o o o         o o o o o   o         o   o o o o o     o   o   o   o   o     o       o       o                 o   o o o   o   o o   o           o   o o     o   o     o o o o       o o     o 
  o o   o   o   o     o     o       o   o o         o   o   o     o   o o o   o o       o         o     o     o o     o     o   o         o     o   o o o o o   o o o                 o o         o o o 
  o       o       o     o o o   o       o o           o       o               o   o o   o         o o   o     o   o   o   o o     o o               o o   o   o o     o       o       o         o       
    o         o     o     o o o         o o o o o     o     o     o o o   o           o o       o o     o     o             o       o         o   o o             o o       o   o   o         o o o o   
                  o o o o o o         o     o       o                 o   o   o o     o     o   o   o     o   o o o   o       o o                 o o       o o o o o o     o               o   o   o o 
o o       o o                 o   o             o   o                 o       o o   o o   o   o o o   o       o o       o o       o o o o     o       o     o o o o   o   o     o o     o   o   o     o 
      o o o o o     o o         o             o   o           o o o   o o   o o o     o o o     o o o o o   o   o o         o       o o   o       o o o o       o     o     o   o       o o         o o 
o   o o   o o   o o o   o o     o     o     o   o           o   o         o         o     o   o     o o   o       o             o             o   o o   o       o o     o     o           o             
  o o   o o   o     o o   o   o         o o               o o   o o     o o     o o     o   o o o         o   o o o     o o   o o o   o     o     o   o o   o o   o     o   o             o o o o o     
          o       o o   o o o     o o o o   o o   o o         o     o       o o o     o         o       o o                 o o o o     o o   o   o     o o o   o o o   o   o     o o               o   
    o o o       o     o   o                 o   o   o o o   o     o o   o     o           o     o   o o   o     o o   o     o o o o   o                   o o   o   o                 o   o o   o o   o 
      o o o   o     o   o o       o           o   o     o       o   o         o     o   o               o     o     o o   o o o   o   o o o     o     o     o o o       o     o     o o     o o         
o o o         o   o     o         o   o   o         o o           o o   o o             o   o   o o   o o o                 o       o     o o       o       o     o   o o     o       o o   o       o   
  o o o   o     o o             o     o o o o o         o       o o o o   o     o o o     o       o o   o     o       o o     o           o   o     o o o                             o o o     o o   o 
o o     o     o o             o         o   o o o             o   o   o     o   o         o o       o           o         o o         o     o     o   o o         o   o     o         o               o 
  o o o o           o           o         o o                   o   o o         o   o         o       o             o o o o o o           o     o           o   o o       o         o o o     o o       
o     o o   o   o o   o o o o o     o o   o           o         o   o o o   o           o   o     o           o o o o o o o o o       o           o     o   o o   o   o   o o       o     o       o     
o   o       o o o   o         o o o o     o o     o     o   o       o   o     o o o o     o o o o o       o   o o o         o           o   o o   o o   o o   o     o o   o       o   o o   o   o   o o 
o o             o   o o   o o           o o o o   o   o   o       o o   o o   o     o       o o     o       o     o     o o             o       o o   o         o   o   o o     o o         o           
      o   o o       o     o   o   o o         o     o o     o o o o     o   o o   o o         o o   o       o o   o   o           o   o o   o   o o o   o             o     o o         o     o     o   
  o               o o   o     o o   o     o o               o   o   o       o o o o       o     o o     o   o     o o o       o o             o o o   o   o o   o   o         o     o   o       o o o o 
o   o   o       o           o o     o     o o       o o o   o o o o     o o   o o o     o o o         o     o     o           o       o     o o   o     o o o       o o   o       o o o o o         o o 
  o o     o o   o           o o         o o   o o o o     o o       o         o o o     o   o o             o o   o     o   o         o     o     o   o o   o           o     o o         o o     o o o 
    o             o   o o     o o     o   o     o o     o   o   o o     o o o     o o           o o   o           o   o     o   o   o o o   o     o o o       o o   o   o     o     o o o o   o   o   o 
      o     o     o           o     o o o           o           o o   o   o   o o o o   o       o o o       o     o o     o o o o o o o o       o       o   o       o       o o   o     o   o     o   o 
o o       o o o         o   o     o       o o     o               o             o o o   o           o             o o               o o       o o     o o   o o o       o     o       o   o     o       
  o     o o o     o           o o o o     o o   o o o o   o o   o o o     o o o     o     o     o o   o o       o o     o o     o   o     o         o   o   o o   o   o o o   o o           o   o o o o 
o     o           o o   o     o   o o o   o   o             o       o o     o o   o   o     o             o   o     o   o o         o     o                 o o o       o   o o   o   o   o o     o o o 
  o   o   o   o   o   o o o o o     o                   o o     o o o   o o o o o   o o o     o o     o           o o o o       o o   o o   o o         o o   o     o           o           o           
o o       o   o o     o o   o       o o       o o       o   o   o o o o o   o   o   o     o o         o   o           o o       o     o           o o   o   o   o   o   o       o o o   o   o o o       
      o   o       o               o     o   o o   o o           o           o o               o     o     o o           o   o       o     o     o   o     o o     o o o   o   o       o o     o         
o o o o     o     o o o     o o   o o     o       o o       o             o o   o o               o o   o     o o         o         o     o o               o       o   o o   o     o       o   o o o   
  o   o o             o             o   o o     o   o o     o o   o       o     o o o     o               o       o o         o               o       o   o o o     o   o         o   o     o     o     
  o   o                               o   o             o   o     o       o     o       o   o   o o o o o           o   o         o   o   o           o       o   o o     o   o   o o o     o o         
    o                 o   o o   o o o o o o         o o       o o o o o   o o o         o     o       o   o   o   o   o       o     o     o o   o     o   o     o o         o o   o       o   o     o   
o o       o   o         o o       o   o o o     o   o o   o     o o o o   o o o   o o         o   o   o o       o o     o   o                   o         o   o o   o     o o o o o             o       
o     o o o     o   o       o     o     o   o   o o o     o       o o o o           o o o o o     o   o   o o o o o       o     o           o   o   o         o                   o o       o           
o       o o o       o   o       o o o o       o o       o     o o       o   o             o           o o o o     o   o   o     o o o o o       o           o   o       o             o o o   o   o o   
  o     o   o   o   o   o           o o   o   o   o o o o   o                   o o     o o       o       o   o   o             o o     o     o             o   o o o   o o     o             o   o o   
    o o o   o                   o     o o   o   o   o     o   o o             o o o o             o o     o     o       o o o o       o   o o   o   o o o   o   o o   o                     o         o 
o                       o o   o o       o           o o           o o o   o o   o   o             o       o   o       o         o o o o o o     o     o       o           o     o     o     o   o o   o 
  o             o       o o             o o o     o o       o o   o           o o o o o     o o o   o o               o o o o     o o o   o         o o o o o o         o o         o     o   o   o   o 
o   o     o       o o       o           o     o   o o   o     o       o       o               o   o   o   o o   o o o o       o                 o   o       o o             o       o     o o o       o 
o       o               o o o   o       o o     o   o       o       o       o o o o   o     o   o     o o o o o o o o   o o         o o o   o o             o       o   o o         o   o   o   o   o o 
o o     o       o               o o o   o   o o o o o o   o               o   o   o o         o       o o     o o   o             o     o o   o o     o o o o o     o o     o             o o o o       
  o   o     o o     o             o o o       o   o       o     o o   o     o     o   o   o   o o           o       o o         o   o o   o o o           o   o o o o     o o o                 o   o   
  o       o             o           o   o   o           o     o   o         o o             o   o   o       o o o         o         o o o o     o o o               o   o       o o o     o o     o o   
    o             o     o o o       o o       o   o o o       o o o o     o     o   o         o o o o o   o o o o   o     o     o o     o       o     o o   o o     o o o     o o   o o   o o   o o   o 
  o   o     o o         o     o o o             o     o                 o         o o     o o o   o       o o o     o     o o             o   o   o o         o                 o   o o   o     o o   o 
  o   o       o o o o       o   o   o     o       o o o     o o     o   o     o o         o   o         o o       o   o     o       o   o     o     o o o           o   o o o   o o         o o o o o o 
o           o         o   o     o   o o     o   o   o     o     o     o     o o o         o     o   o   o               o     o o o o       o o o   o           o o   o         o   o o o         o   o 
              o     o       o o o       o   o   o   o       o o         o   o                           o   o   o o o o o o o     o             o   o     o       o o       o o     o                   
    o         o   o   o   o   o   o o     o   o   o     o   o   o       o   o o     o o o o     o   o   o   o   o o   o                 o     o   o o   o   o                         o     o o o   o   
o           o o   o   o   o   o   o   o o       o   o   o o         o   o o o o   o o         o o     o o o o o   o     o   o o o   o     o   o             o   o   o o   o     o o     o o   o       o 
o o o     o         o             o o       o         o     o o               o o o         o o         o o o o o o o       o o o     o     o     o       o         o   o   o o   o o         o   o o o 
o             o                     o o         o o o           o     o o   o o o o     o       o o   o   o o     o   o   o o         o o o   o     o   o   o     o     o     o o   o o   o     o   o o 
o       o       o     o     o o     o o o   o o   o         o o     o   o   o   o o   o     o           o   o             o o     o o       o o     o       o   o o o o     o   o o   o o               
      o   o     o o   o o o           o   o o o   o             o     o   o     o   o o     o   o     o o o o o o o   o   o       o     o o         o   o o o   o                     o   o o   o o o   
o   o o o o         o o           o       o         o o   o   o o o   o   o   o o o   o   o       o o o                 o     o       o       o   o o     o o o   o o o o o     o o       o   o         
o o             o       o o         o       o   o       o   o o     o o     o     o   o       o o o         o     o   o     o       o o     o                       o   o   o o     o         o o       
    o o   o   o         o   o     o     o   o   o o   o o o o                   o o o o o o       o o       o o   o o   o   o o   o         o o   o     o   o       o             o o     o     o   o o 
o o       o         o   o   o o o       o           o o           o o o o   o       o   o   o o o   o o o o o     o o o           o o     o       o         o o     o o     o     o         o     o     
  o o o       o   o o       o o o o       o   o         o   o     o   o           o               o   o   o   o           o       o   o o   o             o   o o o         o o   o o o         o   o o 
    o o o         o   o         o o o   o   o   o     o       o o       o o o   o o                   o o             o   o       o     o           o o     o                   o o           o   o o   
    o         o o     o   o         o o     o o o               o   o   o                       o           o         o   o   o   o o o   o           o o o   o   o o o   o o o         o o   o o   o o 
  o o o     o                   o o     o o   o     o       o o   o   o     o       o       o o o     o     o o o   o   o o       o o o o o     o o o o   o o o     o   o o       o             o   o o 
o o   o o o   o o   o o o o         o o   o o o     o o     o     o   o o o o         o   o   o o o   o o     o o   o         o   o o o         o o         o         o o o o   o         o       o   o 
                o     o   o o           o o o   o                 o         o o o   o o o   o   o   o o     o o o     o o   o o o       o o o     o             o     o o         o     o     o o   o o 
  o       o   o     o o     o       o   o   o o   o         o     o o o               o       o   o       o o   o       o   o o o o       o   o       o   o   o o     o                 o     o o o   o 
      o       o o o o     o   o o       o   o   o o           o     o o     o     o       o     o   o o       o       o o o     o         o     o o                     o     o o         o             
    o     o       o o         o   o       o o   o   o o o                 o     o o o o o               o   o o           o o   o   o o   o     o   o o           o o   o   o   o   o     o             
Board:
                                                                                                                                                                            o                           
                                                                                              o o                                                                         o   o                         
                                                  o o                                         o o                                                                         o o                           
                                                o     o                                                                                                                                                 
                                                  o   o                                                                                                                                                 
                                                    o                                                                                                                             o o o                 
                                                                          o o                     o                                                                                                     
                                          o                             o     o                 o   o                                                                                                   
                      o o o             o   o                           o   o                   o     o                                             o o o                                               
                                          o   o                           o                       o o                                                                                                   
                                            o o                                                                                                                                                         
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                    o o o                                                                                                                                               
                                                                                                                                                                                                        
  o                                                                                                                                                                                                     
o   o                                                                                                                                                                                                   
o     o                                                                                                                                                                                                 
  o o                                                                                                                                                                 o o o                             
                                                                                                                                                                                                        
                                                                                                                          o                                                                   o         
                                                                                                                        o   o                                                                           
                                                                                                                        o   o                         o o                                               
                                                                                                                          o                           o o                                               
    o                                                                                                                           o                                         o o o               o         
    o                                                                                                                         o   o                                                                     
    o                                                                                                                 o o       o                                                   o o                 
                                                                                  o o o                               o o                                                           o o                 
                                            o o                                                 o o                                                                                                     
                        o                   o o                                               o     o                                           o o                                                     
                        o                                                                     o   o                                     o       o o                                                     
                        o                                                                       o                                       o                           o o                       o         
                                                                                                                                        o                           o o                       o         
                o o o                             o o                                         o                                                                                                         
                                                  o o                                         o                   o                                                                                     
                              o o o                                                           o                   o                                                                                     
                                                                                                                  o                           o                                                         
                                                      o                                                                                     o   o                                                       
                                                    o   o                                                                                 o     o                                                       
                                          o o       o o                                                                                     o o                           o                   o         
                                          o o                                                           o                                                                 o                   o         
                                                                                                      o   o                                                               o                   o         
                                                          o o                                           o o                                                                                             
                                                          o o                                                                                                                                           
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                            o o                                         
                                                                                                                                                            o o                                         
                            o o o                                                                                                                                                                       
                                                                                                                      o o                                                                               
                        o                                                                                           o   o                                                                               
                        o                                                                                             o                                                                                 
                        o                                                     o o o                                                                                                                     
                                                                                                            o o                                                                                         
                            o o o                                                                         o     o                                           o o                                         
                                                                                                            o o                                           o     o                             o         
                                                                                                                                                          o   o                               o         
                                                                                                                                                            o                                 o         
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                o o                                                                                                                                                         o                           
                o o                                                                                                                                                         o                           
                                                                                                                                                      o o                   o                           
                                                                              o o                                                                     o   o                                             
                                                                            o     o                                                                     o                                               
                                                                  o o         o o                                                                                                                       
                                                                  o o                                                                                                                                   
          o                                                                                                                                                                                             
          o                                                                                                                                                                 o o                         
          o                                                                                                                                                               o     o             o         
                                                                                                                                                                            o o                         
  o o o       o o o                                                                                 o o                                                                                                 
                                                                                                  o     o                                                                                               
          o               o o                             o                                       o   o                                                                                       o         
          o               o o                           o   o                     o o o             o                                                                                                   
          o                                           o   o                                                                                                                                             
                                                      o o                     o           o                 o o                                                                                         
                                                                              o           o                 o o                                                                                         
                                                                              o           o                                                                                                             
                                                                                                                                                                                                        
                                                                                  o o o       o o                                                                                                       
                                                                                              o o                                                                                   o                   
  o                                                                                                                                                                                 o                   
  o                                                                                                                                                                                 o                   
  o                                                   o                                                                                             o o                                                 
                                                    o   o                                                                                           o o                                                 
                                                    o   o                                                                                                                                               
                                                      o                                                                                   o o                                                           
                                                                                                                                          o o                                                           
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                          o                                   o       o                       o               o           o                                                   o         
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
                                                                                                                                                                                                        
Computed 1000000 generations in 307.956000 ms

```