Hi there. 

My name is Gabriel, and I think we spend too much time writing the same stuff over and over on the TD without learning much. So I decided to create a small library to help me and other students write their code faster and spend more time thinking about the logic in their programs rather than how to do the math in pascal.
Anyone is welcome to help, and we need testers too in case you think the coding is too complicated. I am also willing to teach anyone who is interested.

To use these functions and procedures, all you need to do is import the lpr file into your program(https://wiki.freepascal.org/Uses).

Beneath you'll find a brief description of how functions and procedures work.
I hope this project can be of use to you.
See you thursday in class.





Functions and Procedures:
This library contains many procedures and functions.

Functions are ways to call entire blocks of code using just an initialization in a call.
for example

//Returns largest of two values
function max(x, y:currency):currency;
begin
   if(x > y)then
   begin
     max:=x;
   end
   else
   begin
     max:=y;
   end;


If in my code I write:

max;
write(max(5,9));

The output will be:

9


Procedures are very similar, but they don't return a value. 
So for example:

procedure max(x, y:currency);
begin
   if(x > y)then
   begin
     max:=x;
   end
   else
   begin
     max:=y;
   end;

won't do anything if I type

max;
write(max(5,9));

In order for it do do it I would have to change it to

procedure max(x, y:currency);
begin
   if(x > y)then
   begin
     write(x);
   end
   else
   begin
     write(y);
   end;

And in my code I should type

max;
max(5,9);

for the output to be 9

You can read more about it on:
https://wiki.freepascal.org/Function
https://wiki.freepascal.org/Procedure

