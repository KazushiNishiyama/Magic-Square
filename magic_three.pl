%3×3 magic square
%?- magic(A,B,C).
magic([A1,A2,A3],[B1,B2,B3],[C1,C2,C3]) :-
select(A1,[1,2,3,4,5,6,7,8,9],L1),
select(A2,L1,L2),
select(A3,L2,L3),
A1+A2+A3=:=15,
select(B1,L3,L4),
select(C1,L4,L5),
A1+B1+C1=:=15,
select(B2,L5,L6),
select(B3,L6,L7),
B1+B2+B3=:=15,
select(C2,L7,L8),
A2+B2+C2=:=15,
select(C3,L8,[]),
C1+C2+C3=:=15,
A3+B3+C3=:=15.