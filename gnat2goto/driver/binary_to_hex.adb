package body Binary_To_Hex is
   function Convert_Binary_To_Hex (Binary : String) return String is
      type Hex_Digit_Pos is mod 16;
      type Hex_Digit is ('0', '1', '2', '3', '4',
                         '5', '6', '7', '8', '9',
                         'a', 'b', 'c', 'd', 'e',
                         'f');
      subtype Binary_Quartet_T is String (1 .. 4);

      function Convert_Binary_To_Hex_Digit (Binary_Quartet : Binary_Quartet_T)
                                           return Hex_Digit;

      function Convert_Binary_To_Hex_Digit (Binary_Quartet : Binary_Quartet_T)
                                           return Hex_Digit is
         Pos : Hex_Digit_Pos := 0;
      begin
         for Digit of Binary_Quartet loop
            Pos := Pos * 2;
            if Digit = '1' then
               Pos := Pos + 1;
            else
               pragma Assert (Digit = '0');
            end if;
         end loop;
         return Hex_Digit'Val (Pos);
      end Convert_Binary_To_Hex_Digit;

      Result : String (1 .. ((Binary'Length / 4)));
   begin
      for I in Result'Range loop
         declare
            Binary_Quartet_Start : constant Integer := Binary'First +
              --  -1 because I starts at 1
              (I - 1) * 4;
            Binary_Quartet_End : constant Integer := Binary_Quartet_Start + 3;
            Binary_Quartet : constant Binary_Quartet_T := Binary
              (Binary_Quartet_Start .. Binary_Quartet_End);
         begin
            Result (I) := Character'Value (Hex_Digit'Image
              (Convert_Binary_To_Hex_Digit (Binary_Quartet)));
         end;
      end loop;
      return Result;
   end Convert_Binary_To_Hex;
end Binary_To_Hex;
