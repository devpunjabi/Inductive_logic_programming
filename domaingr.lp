object(o1).
object(o2).
%object(o3).
%object(o4).
%object(o5).

fluent(inWater(O)):- object(O).
fluent(wet(O)):- object(O).
action(putInWater(O)):- object(O).
value(true).
value(false).


%*
s_law(s1).
head(s1,inWater(v(1)),true).
%head(s1,inWater(v(1))).
vlist(s1,lambda(O)) :- object(O).
after(s1,putInWater(v(1))).
*%

s_law(s2).
head(s2,wet(v(1)),true).
%head(s2,wet(v(1))).
vlist(s2,lambda(O)) :- object(O).
if(s2,inWater(v(1)),true).


s_law(s3).
head(s3,inWater(v(1)),true).
%head(s3,inWater(v(1))).
vlist(s3,lambda(O)) :- object(O).
if(s3,inWater(v(1)),true).
after(s3,inWater(v(1)), true).

s_law(s4).
head(s4,inWater(v(1)),false).
%head(s4,inWater(v(1))).
vlist(s4,lambda(O)) :- object(O).
if(s4,inWater(v(1)),false).
after(s4,inWater(v(1)),false).

s_law(s5).
head(s5,wet(v(1)),true).
%head(s5,wet(v(1))).
vlist(s5,lambda(O)) :- object(O).
if(s5,wet(v(1)),true).
after(s5,wet(v(1)),true).


s_law(s6).
head(s6,wet(v(1)),false).
%head(s6,wet(v(1))).
vlist(s6,lambda(O)) :- object(O).
if(s6,wet(v(1)),false).
after(s6,wet(v(1)),false).


%s_law(s7(O))  :- object(O).
%head(s7(O),inWater(O),false)  :- object(O).
%if(s7(O),inWater(O),false)  :- object(O).
%after(s7(O),inWater(O),true) :- object(O).




#show h/4.
#show occ/3.
%time(2).
%:- not h(inWater(O), false, 0), object(O).
%:- not h(inWater(O), true, 0), object(O).
%:- not h(inWater(O), false, 0), object(O).


%{s_law(s8(object(O)))}.
%{head(s8(object(O)),inWater(O),false)}.
%{if(s8(object(O)),inWater(O),false)}.
%{after(s8(object(O)),inWater(O),true)}.

%gr(inWater(O),V, lambda(O), inWater(v(1))) :- object(O), value(V).
%gr(wet(O),V, lambda(O), wet(v(1))) :- object(O), value(V).
%gr(putinWater(O),V, lambda(O), putinWater(v(1))) :- object(O), value(V).


%#show .	
%#show h/3.
%#show s_law/1.
%#show head/3.
%#show if/3.
%#show after/3.
