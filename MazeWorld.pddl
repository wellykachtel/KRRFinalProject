(define (domain MazeWorld)

(:requirements :typing)

(:types block numeric bool)

(:constants
    zero one two three four five - numeric
    true false - bool
)

(:predicates
    (connected ?a ?b - block)
    (isExit ?x - block)
    (hasAgent ?a - block)
    (keyCount ?n - numeric)
    (hasKey ?k - block)
    (totalKeys ?n - numeric)
    (complete ?b - bool)
    (nextNum ?n ?m - numeric)
)

(:action moveAgent

 :parameters    (?a ?b - block)

 :precondition  (and
                 (hasAgent ?a)
                 (connected ?a ?b)
              )

 :effect        (and
                 (not (hasAgent ?a))
                 (hasAgent ?b)
                )
)


(:action collectKey

 :parameters    (?a - block ?n ?m - numeric)

 :precondition  (and
                 (hasAgent ?a)
                 (hasKey ?a)
                 (nextNum ?n ?m)
                 (keyCount ?n)
              )

 :effect        (and
                 (not (hasKey ?a))
                 (not (keyCount ?n))
                 (keyCount ?m)
                )
)

(:action completeMaze

 :parameters    (?a - block ?n - numeric)

 :precondition  (and
                 (hasAgent ?a)
                 (isExit ?a)
                 (keyCount ?n)
                 (totalKeys ?n)
              )

 :effect        (and
                 (complete true)
                )
)

)











