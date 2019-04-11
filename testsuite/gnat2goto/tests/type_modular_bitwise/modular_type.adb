procedure Modular_Type is
  type Less_Than_Ten is mod 10;
  procedure Assert_Val (X : Less_Than_Ten) is
     Y : Less_Than_Ten := X;
     Z : Less_Than_Ten := Y;
  begin
     pragma Assert (X = 5);
     Y := X + 3;
     Z := X - 1;

     Y := Y and X;
     pragma Assert (Y = 0);
     Z := Z or X;
     pragma Assert (Z = 5);
     Z := Y xor (Y-1);
     pragma Assert (Z = 1);
     Z := not X;
     pragma Assert (Z = 4);
end Assert_Val;
begin
  Assert_Val (5);
end Modular_Type;
