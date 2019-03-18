(define (problem Maze2)
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
    block9 - block
    block10 - block
    block11 - block
    block12 - block
    block13 - block
    block14 - block
    block15 - block
    block16 - block
    block17 - block
    block18 - block
    block19 - block
    block20 - block
    block21 - block
    block22 - block
    block23 - block
    block24 - block
    
)
    (:init
        (connected block10 block11)
        (connected block11 block10)
        (connected block11 block16)
        (connected block11 block6)
        (connected block13 block18)
        (connected block13 block8)
        (connected block16 block11)
        (connected block16 block17)
        (connected block17 block16)
        (connected block17 block18)
        (connected block18 block13)
        (connected block18 block17)
        (connected block6 block11)
        (connected block6 block7)
        (connected block7 block6)
        (connected block7 block8)
        (connected block8 block13)
        (connected block8 block7)
        (connected block8 block9)
        (connected block9 block8)
        
        (isExit block9)
        (hasAgent block10)
        (hasKey block7)
        (totalKeys one)
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