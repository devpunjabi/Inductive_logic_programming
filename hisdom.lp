:- obs(F,V,T,B) , not h(F,V,T,B), history(B).
h(F,V,0,B) :- obs(F,V,0,B).
o(A,T) :- occ(A,T,B).
