(define (problem Maze1)
  (:domain MazePlanner)
  (:objects
    block0 - block
    block1 - block
    block2 - block
    block3 - block
    block4 - block
    block5 - block
    block6 - block
    block7 - block
    block8 - block
    
)
    (:init
        (connected block3 block4)
        (connected block4 block3)
        (connected block4 block5)
        (connected block5 block4)
        
        (isExit block5)
        (hasAgent block3)
        (totalKeys zero)
        (keyCount zero)
        (complete false)
   
        (nextNum zero one)
        (nextNum one two)
        (nextNum two three)
        (nextNum three four)
        (nextNum four five)
    )
    
    (:goal (and (complete true)))
)