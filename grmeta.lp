
gr(inWater(O),lambda(O), inWater(v(1))) :- object(O).
gr(wet(O),lambda(O), wet(v(1))) :- object(O).
occgr(putInWater(O), lambda(O), putInWater(v(1))) :- object(O).


%gr(F,V, lambda(O), putinWater(v(1))):- fluent(F), value(V), object(O).
%#show gr/3.
