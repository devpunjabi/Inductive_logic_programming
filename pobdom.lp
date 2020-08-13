%:- not h(inWater(O), false,0),object(O).
%:- not h(wet(O), false,0),object(O).
%:- not h(inWater(O), true,1),object(O).

history(1).
history(2).
%:- not h(inWater(o1,1).
d_law(7).
limit_if(R,0,5):- d_law(R). 
limit_after3(R,0,5):- d_law(R).
limit_after2(R,0,5):- d_law(R).


obs(inWater(O), false,0,1) :- object(O).
obs(wet(O), false,0,1):- object(O).
obs(inWater(O), false,0,2) :- object(O).
obs(wet(O), false,0,2):- object(O).
%obs(inWater(O), true,1,1) :- object(O).
obs(inWater(o1), false,1,2).
obs(inWater(o1), true,1,1).
obs(inWater(o2), true,1,2).


%obs(inWater(o3), true,1,2).
%obs(inWater(o3), true,1).
%obs(inWater(o4), true,1).

time(0).
time(1).
