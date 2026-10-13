let rec encrypt (s : string) : string = 
  let shift_char c = 
    let base = if c >= 'a' then 'a' else 'A' in
    let offset = (char_of_int ((int_of_char c - int_of_char base + 4) mod 26)) in
    char_of_int ((int_of_char offset) + (int_of_char base)) in
  let rec iter (s : string) (acc : string) : string = 
    match s with
    | "" -> acc
    | _  -> iter (String.sub s 1 (String.length s - 1)) (acc ^ (String.make 1 (shift_char (String.get s 0)))) in
  iter s ""


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
