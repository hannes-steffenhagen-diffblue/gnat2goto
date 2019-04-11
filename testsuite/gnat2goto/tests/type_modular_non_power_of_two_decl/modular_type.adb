procedure Modular_Type is
  type Less_Than_Ten is mod 10;
  procedure Assert_Val (X : Less_Than_Ten) is
     Y : Less_Than_Ten := X;
     Z : Less_Than_Ten := Y;
  begin
     pragma Assert (X = 5);
     Y := X + 3;
     pragma Assert (Y = 8);
     Y := Y + 3;
     pragma Assert (Y = 1);
     Y := (Y + 1) * X;
     pragma Assert (Y = 0);
     Z := Z * 2;
     pragma Assert (Z = 0);
     Z := X * 3;
     pragma Assert (Z = 5);
     Z := X * Z;
     pragma Assert (Z = 5);
     Z := X * 4;
     pragma Assert (Z = 0);
     Y := 4;
     pragma Assert (Y * 1 = 4);
     pragma Assert (Y * 2 = 8);
     pragma Assert (Y * 3 = 2);
     pragma Assert (Y * 4 = 6);
     pragma Assert (Y * 5 = 0);
     pragma Assert (Y * 6 = 4);
     pragma Assert (Y * 7 = 8);
     pragma Assert (Y * 8 = 2);
     pragma Assert (Y * 9 = 6);

     Y := X - 6;
     pragma Assert (Y = 1);

     Y := X / 2;
     pragma Assert (Y = 2);
end Assert_Val;
begin
  Assert_Val (5);
end Modular_Type;
