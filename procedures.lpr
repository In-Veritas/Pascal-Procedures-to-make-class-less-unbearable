program procedures;

//Prints an end of code
procedure quit;
begin
  writeln;
  writeln;
  writeln;
  write('End of Program. Press <Enter> to Quit');
  readln;
end;


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


end;

//Returns smallest of two values
function min(x, y:real):real;
begin
   if(x < y)then
   begin
     min:=x;
   end
   else
   begin
     min:=y;
   end;
end;


//Returns largest value in an array of integers
function maxarray(list: array of integer):integer;
  var
    i:integer;
    max:integer;
begin
   max:=list[1];
   for i:=2 to Length(list) do
   begin
     if(list[i] > max)then
     begin
       max:=list[i];
     end;
   end;
   maxarray:=max;
end;

//Returns smallest value in an array of integers
function minarray(list: array of integer):integer;
  var
    i:integer;
    min:integer;
begin
   min:=list[1];
   for i:=2 to Length(list) do
   begin
     if(list[i] < min)then
     begin
       min:=list[i];
     end;
   end;
   minarray:=min;
end;

//Returns an array of integers filled with 0s
type
  nularray=array of integer;
function zeroarray(size:integer):nularray;

  var
   i:integer;
   zeros:array of integer;

  begin
     setlength(zeros,size);
     for i:=1 to size do
     begin
       zeros[i]:=0;
     end;
  zeroarray:=zeros;
  end; 

{//Prints an array in a specific number of columns.
procedure colprint(list: array of dynamictype;,cols: integer);
   var
    i,counter:integer;
  begin
     counter:=0
     for i:=1 to cols do
     begin
       counter:=counter+1;
       WRITELN();

     end;


  end;
//Prints an array in a specific number of rows.
procedure rowprint(rows: integer);
begin


end;}

//returns the average of an array of values
function average(list:array of real):real;
var 
i:integer;
sum, avg :real;
begin
sum:=0;
for i:=1 to length(list) do
begin
inc(sum,list[i]);
end;
avg:=sum/length(list);
average:=avg;

begin
  quit;
  quit();

end.

