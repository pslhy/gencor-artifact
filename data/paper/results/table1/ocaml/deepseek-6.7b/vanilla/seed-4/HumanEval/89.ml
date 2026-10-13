let rec encrypt (s : string) : string =
  let len = String.length s in
  let rec helper (index : int) (acc : string) : string =
    if index = len then
      acc
    else
      let char_code = Char.code (String.get s index) in
      let new_char_code = (char_code - 97 + 14) mod 26 + 97 in
      helper (index + 1) (acc ^ (String.make 1 (Char.chr new_char_code)))
  in
  helper 0 ""


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
