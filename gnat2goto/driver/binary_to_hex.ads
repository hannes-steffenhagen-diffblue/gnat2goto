package Binary_To_Hex is
   function Convert_Binary_To_Hex (Binary : String) return String with
     Pre => (Binary'Length mod 4 = 0),
     Post => (Convert_Binary_To_Hex'Result'Length = Binary'Length / 4);
end Binary_To_Hex;
