

%gr(inWater(O),lambda(O),V,inWater(v(1))) :- object(O), value(V).
%gr(wet(O),lambda(O),V, wet(v(1))) :- object(O), value(V).
%gr(putinWater(O), lambda(O),V, putinWater(v(1))) :- object(O),value(V).

%allifh(W,VL,T) :-vlist(W, VL) , time(T); not not h(H,V,T) : if(W,HG,V), gr(HG,V,VL,H).
%allafterh(W,VL,T) :-vlist(W, VL) , time(T); not not h(H,V,T) : after(W,HG,V), gr(HG,V,VL,H).

%allifh(W,VL,T) :-vlist(W, VL) , time(T); not not h(H1, V1,T) : if(W,H1,V1), gr(H1,VL,HG1).
%allifh(W,VL,T) :-vlist(W, VL) , time(T); not not h(H1, V1,T) : if(W,H1,V1), gr(H1,VL,HG1).

h(H,V,T) :- s_law(W),head(W,HG,V), vlist(W,VL), gr(H,VL,HG), time(T),%, test(W,HG,V,T),
	    not not h(H1,V1,T) : if(W,HG1,V1), gr(H1,VL,HG1);
	    occ(H1,T):after(W,HG1),occgr(H1,VL,HG1);
	    h(H1,V1,T-1):after(W,HG1,V1),gr(H1,VL,HG1).

%{ test(W,HG,V,T)} :-head(W,HG,V), time(T).
%h3(H1,V1,T-1):- s_law(W),after(W,HG1,V1),gr(H1,VL,HG1), time(T).


1{h(H,true,0); h(H,false,0)}1 :- fluent(H).

:- h(H,true,T), h(H,false,T).
:- not h(H,true,T) , not h(H,false,T), fluent(H), time(T).

0{occ(A,T) : occgr(A, VL, HG)}1 :- time(T), T>0.
	

%, vlist(W, VL), 

%not not h(H1,V1,T) : if(W,HG1,V1), gr(H1,V1,VL1,HG1); occ(HG1,T):after(W,HG1),gr(H1,V1,VL1,HG1); %h(H1,V1,T-1) : after(W,HG1,V1), %gr(H1,V1,VL1,HG1).							


%h(H,V,T) :- head(W,HG,V), time(T), vlist(W,VL),gr(H,VL,HG),not not h(H1,V1,T) : %if(W1,HG1,V1),gr(H1,VL1,HG1), vlist(W1,VL1);occ(H1,T):after(W1,H1),gr(H1,VL1,HG1), vlist(W1, %VL1);h(H1,V1,T-1) : after(W1,HG1,V1),gr(H1,VL1,HG1), vlist(W1, VL1).

%h(H,T) :-s_law(W), vlist(W,VL) ,time(T), T>0, head(W,HG), gr(H,VL,HG) , not not h(L,V): if(W,LG,V), %gr(L,VL,LG). 

%1{not not h(H,0)}1 :- fluent(H).

%shas if (W,N),N > 1, not has if (W,N − 1).


%:- not h(inWater(O), false, 0), object(O).
%:- not h(wet(O), false, 0), object(O).



%#show h/3.
%#show h/2.
%#show allifh/3.
%#show occ/2.
%#show gr/3.




