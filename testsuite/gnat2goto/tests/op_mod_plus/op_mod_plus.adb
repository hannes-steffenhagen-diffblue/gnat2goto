procedure Op_Mod_Plus is
  type Less_Than_Ten is mod 10;

  function Mod_Plus (X : Less_Than_Ten; Y : Less_Than_Ten)
    return Less_Than_Ten is (X + Y);

begin
  pragma Assert (Mod_Plus (0, 1) = 1);
  pragma Assert (Mod_Plus (4, 5) = 9);
  pragma Assert (Mod_Plus (5, 5) = 0);
  pragma Assert (Mod_Plus (9, 9) = 8);
end Op_Mod_Plus;
