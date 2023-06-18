# IProlog
Creates a new prolog conditional without it being explicitely told to.

## Results
~~~swipl
1 ?- charlotte(alive).
true.

2 ?- player(charlotte, not_dating).
true.
~~~

## Theoretical Mappings
~~~
0 Charlotte Dies            0 Never Dates Player
1 Charlotte Fate Unknown    1 Relationship Is Unknown
2 Charlotte Lives           2 Dates Player

0,0 0,1 0,2
1,0 1,1 1,2
2,0 2,1 2,2

Charlotte Dies, Never Dates Player
Charlotte Lives, Dates Player

Charlotte Dies, Relationship Is Unknown         [ 0, 1 ] charlotte(dead) :- relationship(unknown).                 [ outcome1.pl ]
Charlotte Dies, Dates Player                    [ 0, 2 ] charlotte(dead) :- player(charlotte, dating).             [ outcome2.pl ]
Charlotte Fate Unknown, Never Dates Player      [ 1, 0 ] charlotte(unknown_fate) :- relationship(unknown).         [ outcome3.pl ]
Charlotte Fate Unknown, Relationship Is Unknown [ 1, 1 ] charlotte(unknown_fate) :- player(charlotte, dating).     [ outcome4.pl ]
Charlotte Fate Unknown, Dates Player            [ 1, 2 ] charlotte(unknown_fate) :- player(charlotte, not_dating). [ outcome5.pl ]
Charlotte Lives, Never Dates Player             [ 2, 0 ] charlotte(alive) :- player(charlotte, not_dating).        [ outcome6.pl ]
Charlotte Lives, Relationship Is Unknown        [ 2, 2 ] charlotte(alive) :- relationship(unknown).                [ outcome7.pl ]
~~~
