begin
  var s: string;
  var ss: string;
  var ls: integer;
  var lss: integer;
  var i: integer;
  var j: integer;
  var flag: boolean;
 readln(s);
 readln(ss);
 i := 1;
 ls := Length(s);
 lss := Length(ss);
 flag := false;
 while i <= ls - lss + 1 do
 begin
   if s[i] = ss[1] then
   begin
     flag := true;
     for j := 1 to lss - 1 do
       if s[i + j] <> ss[j + 1] then
       begin
         i := i + j;
         flag := false;
         break
       end;
     if flag then
     begin
       print('является');
       exit;
     end;
   end;
   i += 1;
 end;
 print('не является');
end.