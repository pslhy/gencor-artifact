
let rec encrypt (s : string) : string =
  if String.length s = 0 then
    ""
  else
    let c = s.[0] in
    let rot2 =
      if c >= 'a' && c <= 'z' then
        char_of_int (((int_of_char c - int_of_char 'a' + 2) * 2) mod 26 + int_of_char 'a')
      else if c >= 'A' && c <= 'Z' then
        char_of_int (((int_of_char c - int_of_char 'A' + 2) * 2) mod 26 + int_of_char 'A')
      else
        c
    in
    rot2 :: encrypt (String.sub s 1 (String.length s - 1))

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
