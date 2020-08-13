%1{s_law(R)}1:- d_law(R).


1{s_law(W)}1 :- d_law(W).
vlist(W,lambda(O)) :- d_law(W), object(O).
%lrgr(inWater(O),lambda(O), inWater(v(1))) :- object(O).
%lrgr(wet(O),lambda(O), wet(v(1))) :- object(O).
%occgr(putInWater(O), lambda(O), putInWater(v(1))) :- object(O).



{new_head(W,HG,V) : gr(H,VL,HG), value(V)}=1 :- d_law(W).
L{new_if(W,HG,V): gr(H,VL,HG), value(V)}U :- d_law(W), limit_if(W,L,U).
L{new_after(W,HG,V): gr(H,VL,HG), value(V)}U :- d_law(W),limit_after3(W,L,U).
L{new_after(W,AG): occgr(H,VL,AG)}U :- d_law(W), limit_after2(W,L,U).



#minimize {
1@2, W : d_law(W);
1@1, W,X,Y : new_if(W,X,Y), d_law(W);
1@1, W,X,Y : new_after(W,X,Y) , d_law(W);
1@1, W,X : new_after(W,X) , d_law(W) }.

head(W,HG,V) : new_head(W,HG,V).
if(W,HG,V) : new_if(W,HG,V).			
after(W,HG,V) : new_after(W,HG,V).
after(W,HG) : new_after(W,HG).



%#show newhead(R,F,V) : newhead(R,F,V) , R = s7.
%#show newif(R,F,V) : newif(R,F,V) , R = s7.

%#show newafter(R,F,V) : newafter(R,F,V) , R = s7.
%#show newafter(R,A) : newafter(R,A) , R = s7.

#show h/4.

#show occ/3.

%*
#show new_head/3.
#show new_if/3.
#show new_after/3.
#show new_after/2.

*%
