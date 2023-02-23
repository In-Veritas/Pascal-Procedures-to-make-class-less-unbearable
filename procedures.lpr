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

// checks if an integer is in an array of integers
type
  intarray=array of integer;
function is_inarray (var
  list:intarray;
  n:integer):boolean;
var i: integer;
  res:boolean;
  begin
     if length(list)=0 then
     begin
       res:=false;
       end
     else
     begin
       for i:=0 to (length(list)-1) do
       begin
         if list[i]=n then
         begin
           res:=true;
           break;
         end;
         res:=false;
         end;
       end;
     is_inarray:=res;
     end;

//returns number of occurences of an integer in an array of integers
function number_occurences( var
  list:intarray;
  n:integer):integer;
var i, c : integer;
  begin
     c:=0;
   if is_inarray(list,n)=false then
   begin
     c:=0;
   end
   else
   begin
     for i:=0 to (length(list)-1) do
     begin
       if list[i]=n then
       begin
         inc(c,1)
       end;
     end;
   end;
   number_occurences:=c;
  end;


//Returns largest value in an array of integers
function maxarray(list: array of integer):integer;
  var
    i:integer;
    max:integer;
begin
   max:=list[0];
   for i:=1 to (Length(list)-1) do
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
   min:=list[0];
   for i:=1 to (Length(list)-1) do
   begin
     if(list[i] < min)then
     begin
       min:=list[i];
     end;
   end;
   minarray:=min;
end;
//returns the index of the max of an array
function index_maxarray(list:array of integer):integer;
var i, indexmax, max : integer;
  begin
     max:=maxarray(list);
     for i:=0 to (length(list)-1) do
     begin
       if list[i]=max then
       begin
         indexmax:=i
       end;
     end;
     index_maxarray:=indexmax;
  end;
  
//returns the index of the min of an array
function index_minarray(list:array of integer):integer;
var i, indexmin, min : integer;
  begin
     min:=minarray(list);
     for i:=0 to (length(list)-1) do
     begin
       if list[i]=min then
       begin
         indexmin:=i
       end;
     end;
     index_minarray:=indexmin;
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
for i:=0 to (length(list)-1) do
begin
sum:= sum+list[i];
end;
avg:=sum/length(list);
average:=avg;

end;

// returns the number of values below average in an array
function below_average(list:array of real):integer;
var c,i:integer;
avg:real;

begin
c:=0;
avg:=average(list);
for i:=1 to length(list) do
begin
if (list[i]<avg) then
begin
  inc(c,1);
  end;
end;
below_average:=c;
end;


// returns the number of values above average in an array
function above_average(list:array of real):integer;
var c,i:integer;
avg:real;

begin
c:=0;
avg:=average(list);
for i:=1 to length(list) do
begin
if (list[i]>avg) then
begin
  inc(c,1);
  end;
end;
above_average:=c;
end;

// prints an array of integers
procedure print_array(list:array of integer);
 var i : integer;
 begin
 write( '[  ');
 for i:=0 to (length(list)-1) do
 begin
 write( list[i],'  ')
 end;
 write(']');
 writeln;
 end;


//tests
var
  list: array of integer;
begin

  //max; returns 21
  writeln(max(16,21):0:2);

  //min; returns 16
  writeln(min(16,21):0:2);

  //maxarray; return 21
  writeln(maxarray([16,21,10,16,12,9,4]));
  //index_maxarray; returns 1
  writeln(index_maxarray([16,21,10,16,12,9,4]));

 // minarray; returns 4
  writeln(minarray([16,21,10,16,12,9,4]));
 //index_minarray; returns 6
  writeln(index_minarray([16,21,10,16,12,9,4]));
  // is_inarray; returns true then false
  //number_occurences; returns 2 then 1 then 0
  list:=[16,21,10,16,12,9,4];
  writeln(is_inarray( list , 9));
  writeln(is_inarray( list , 22));
  writeln(number_occurences(list,16));
  writeln(number_occurences(list,9));
  writeln(number_occurences(list,100));

  //average; returns 17.67
  writeln(average([17,18,18]):0:2);

  //zeroarray, print_array; returns [ 0 0 0 0 0 ]
  list:=zeroarray(5);
  print_array(list);

  //above_average; returns 2
  writeln(above_average([17,18,18]));

  //below_average; returns 1
  writeln(below_average([17,18,18]));

  quit;


end. 
