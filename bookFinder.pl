check:-
find(Course),
write('Here is the suggestion of your catogory '),
write(Course),
nl,
write('Sorry we can not find you category'),nl,undo.

find(programming_language) :-
category(pragramming),
category(coding),
category(codin_language),
nl,
write('----sugestion Books----'),
write('1: Java'),
nl,
write('2: Python'),
nl,
write('3: Kotlin'),
nl,
write('4: Dart Language'),
nl,
write('5: C++'),
nl,
write('6: Java script'),
nl.	       

find(networking) :-
category(switching),
category(routing),
category(security),
nl,
write('----sugestion Books----'),
nl,
write('1: CCNA guide from CISCO'),
nl,
write('2: CCNP guide from CISCO'),
nl,
write('3: Fundamental of computer networking'),
nl,
write('4: CEH guide from CISCO'),nl,
write('5: CCNP'),
nl,
write('6: CompTIA'),
nl.

find(multimedia) :-
category(threeD),
category(twoD),
category(Design),
nl,
write('----sugestion Books----'),
nl,
write('1: adobe photoshop'),
nl,
write('2: adobe illustration'),
nl,
write('3: Maya 3D'),
nl,
write('4: fundamental for graphic designing'),
nl.

find(business) :-
category(marketing),	
category(adminitration),
category(management),
nl,
write('----sugestion Books----'),
nl,
write('1: Content delivery marketing'),
nl,
write('2: Social marketing'),
nl,
write('3: Accounts adminisration'),
nl,
write('4: Project management'),
nl,
write('5: Leadership and training'),
nl,
write('6: Human resource management'),
nl,
write('7: Material management'),
nl.

find(language) :-
category(natural_language),
nl,
write('----sugestion Books----'),
write('1: Tamil'),
nl,
write('2: Sinhala'),
nl,
write('3: Chiees'),
nl,
write('4: japanees'),
nl,
write('5: Hindi'),
nl,
write('6: Malayalam'),
nl.

find(technology) :-
category(engineering_technology),
nl,
write('----sugestion Books----'),
write('1: ICT for technology'),
nl,
write('2: Science for technology'),
nl,
write('3: automobile technology'),
nl.

find(engineering) :-
category(civil_engineering),
nl,
write('----sugestion Books----'),
write('1: construction'),
nl,
write('2: building design'),
nl,
write('3: bridge design'),
nl.

find(automobile) :-
category(mechanical),
category(electronic),
nl,
write('----sugestion Books----'),
write('1: electrical fundamentals'),
nl,
write('2: vehicle redesign'),
nl,
write('3: vehicle wiring'),
nl.


input(Question) :-
write('find your book category '),
write(Question),
write('? : '),
read(Response),
nl,
( (Response == yes ; Response == y)
->
assert(yes(Question)) ;
assert(no(Question)), fail).
:- dynamic yes/1,no/1.

category(C) :-
(yes(C)
->
true ;
(no(C)
->
fail ;
input(C))).

undo :- retract(yes(_)),fail.
undo :- retract(no(_)),fail.
undo.