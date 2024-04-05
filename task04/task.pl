male(arham).
male(rizwan).
male(aliyan).
female(sadaf).
female(saira).
teacher(arham).
teacher(rizwan).
student(arham).
student(aliyan).
student(sadaf).
student(saira).
studies(sadaf, math).
studies(arham, math).
friends(saira, sadaf).
friends(aliyan, sadaf).
friends(arham, rizwan).
bestfriends(arham, sadaf).
bestfriends(saira, sadaf).


mutualfriends(X, Z) :- friends(X, Y), friends(Y, Z), X \= Z. 
classfellow(X, Y) :- student(X), student(Y), X \= Y.
gettinggoodgrades(X, Y) :- studies(X, Subject), teacher(Y), teacherstudentrelation(X, Y, Subject).
teacherstudentrelation(Student, Teacher, Subject) :- student(Student), teacher(Teacher), studies(Student, Subject).
mutualbestfriends(X, Z) :- bestfriends(X, Y), bestfriends(Y, Z), X \= Z.