let rec encrypt (s : string) : string = 
  let rotate c = 
    if c >= 'a' && c <= 'z' then 
      let offset = (c - 'a' + (2 * 2)) mod 26 in 
      char (offset + 'a') 
    else if c >= 'A' && c <= 'Z' then 
      let offset = (c - 'A' + (2 * 2)) mod 26 in 
      char (offset + 'A') 
    else 
      c 
  in 
  String.map rotate s


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
