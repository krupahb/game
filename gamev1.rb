# _______________________________________	__________________________________
  # Any live cell with fewer than two live neighbors dies, as if caused by under-population.
  # Any live cell with two or three live neighbors lives on to the next generation.
  # Any live cell with more than three live neighbours dies, as if by overcrowding.
  # Any dead cell with exactly three live neighbors becomes a live cell, as if by reproduction.

    $matrix = [["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "#","_","_","_","_"],["_", "_","_","#","#", "#","_","_","_"],["_", "_","#","#","#", "#","#","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","#","#","#", "#","#","_","_"],["_", "_","_","#","#", "#","_","_","_"],["_", "_","_","_", "#","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"]]
def compute_neighbour(row,col)
    0.upto(row-1) do |i|
     0.upto(col-1) do |j|
      $count=0
               
             # _________i=max, j=max ________________________ 
             if i==row-1 && j==col-1            
              if $matrix[i-1][j-1]=='#' 
                $count+=1  
              end
              if   $matrix[i-1][j]=='#' 
                $count+=1
              end
              
              if   $matrix[i][j-1]=='#' 
                $count+=1
              end




              # _________j=max i=min_________________________
            elsif j==col-1 && i==0


              if    $matrix[i+1][j]=='#' 
                $count+=1
              end
              if   $matrix[i+1][j-1]=='#' 
                $count+=1
              end
              if   $matrix[i][j-1]=='#' 
                $count+=1
              end
              


              # ________i=max j=min__________________________
            elsif i==row-1 && j==0


              if   $matrix[i-1][j]=='#' 
                $count+=1
              end
              if   $matrix[i-1][j+1]=='#' 
                $count+=1
              end
              if   $matrix[i][j+1]=='#' 
                $count+=1
              end




              # ________i=min j=min______________________         
            elsif i==0 and j==0


              if   $matrix[i][j+1]=='#' 
                $count+=1
              end
              if   $matrix[i+1][j+1]=='#' 
                $count+=1
              end
              if    $matrix[i+1][j]=='#' 
                $count+=1
              end


              # _________j=max______________________
            elsif j==col-1 && i!=row-1 && i!=0

              if   $matrix[i-1][j]=='#' 
                $count+=1
              end
              if   $matrix[i-1][j-1]=='#' 
                $count+=1
              end
              if   $matrix[i][j-1]=='#' 
                $count+=1
              end
              if   $matrix[i+1][j-1]=='#' 
                $count+=1
              end
              if    $matrix[i+1][j]=='#' 
                $count+=1
              end



              # ___i=max______________________
            elsif i==row-1 && j!=col-1 && j!=0
              if $matrix[i-1][j-1]=='#' 
                $count+=1
              end
              if   $matrix[i-1][j]=='#' 
                $count+=1
              end
              if   $matrix[i-1][j+1]=='#' 
                $count+=1
              end
              if   $matrix[i][j+1]=='#' 
                $count+=1
              end
              if   $matrix[i][j-1]=='#' 
                $count+=1
              end

              # _____________j=min_____________________  
            elsif j==0 && i!=row-1 && i!=0
             if   $matrix[i-1][j]=='#' 
              $count+=1
            end
            if   $matrix[i-1][j+1]=='#' 
              $count+=1
            end
            if   $matrix[i][j+1]=='#' 
              $count+=1
            end
            if   $matrix[i+1][j+1]=='#' 
              $count+=1
            end
            if    $matrix[i+1][j]=='#' 
              $count+=1
            end
                # __________i=min________________________
              elsif i==0 && j!=col-1 && j!=0
               if   $matrix[i][j+1]=='#' 
                $count+=1
              end
              if   $matrix[i+1][j+1]=='#' 
                $count+=1
              end
              if    $matrix[i+1][j]=='#' 
                $count+=1
              end
              if   $matrix[i+1][j-1]=='#' 
                $count+=1
              end
              if   $matrix[i][j-1]=='#' 
                $count+=1
              end
                # __________________________________
              else
                if $matrix[i-1][j-1]=='#' 
                  $count+=1
                end
                if   $matrix[i-1][j]=='#' 
                  $count+=1
                end
                if   $matrix[i-1][j+1]=='#' 
                  $count+=1
                end
                if   $matrix[i][j+1]=='#' 
                  $count+=1
                end
                if   $matrix[i+1][j+1]=='#' 
                  $count+=1
                end
                if    $matrix[i+1][j]=='#' 
                  $count+=1
                end
                if   $matrix[i+1][j-1]=='#' 
                  $count+=1
                end
                if   $matrix[i][j-1]=='#' 
                  $count+=1
                end
              end
              if $matrix[i][j]=='_'
                if $count==3
                  $matrix1[i][j]='#'
                end
              else 
                if $count<2 || $count>3
                  $matrix1[i][j]='_'
                elsif $count==2 || $count==3
                  $matrix1[i][j]='#'
                end
              end
                    
             
          end# for j
      end   # for i
end
def display(row)
   for s in 0..row-1
     puts $matrix1[s].inspect
   end
         
          $matrix =$matrix1
          sleep (0.9)
         
          
end
  
  loop do                                      #while(true):infi loop
    system('clear')
    $matrix1= [["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"],["_", "_","_","_", "_","_","_","_","_"]]
    row= $matrix.length
    col= $matrix[0].length
    compute_neighbour(row,col)
    display(row)
  end
  