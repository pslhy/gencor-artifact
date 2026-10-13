let rec encrypt (s : string) : string =
  let shift_char (c : char) : char =
    if 'a' <= c && c <= 'y' then char_of_int (int_of_char c + 2)
    else if c = 'z' then char_of_int (int_of_char 'a' - 1)
    else c
  in
  String.map shift_char s


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function encrypt that takes a string as an argument and *)
(*     returns a string encrypted with the alphabet being rotated. *)
(*     The alphabet should be rotated in a manner such that the letters *)
(*     shift down by two multiplied to two places. *)
(*     For example: *)
(*     >>> encrypt "hi" *)
(*     "lm" *)
(*     >>> encrypt "asdfghjkl" *)
(*     "ewhjklnop" *)
(*     >>> encrypt "gf" *)
(*     "kj" *)
(*     >>> encrypt "et" *)
(*     "ix" *)
