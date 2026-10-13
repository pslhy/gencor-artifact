let rec encrypt (s : string) : string = 
  let rec helper (chars : char list) : char list = 
    match chars with
    | [] -> []
    | 'a'..'y' as c -> (char ((int c - int 'a' + 4) mod 26 + int 'a')) :: helper (cdr chars)
    | 'z' as c -> (char ((int c - int 'a' + 4) mod 26 + int 'a')) :: helper (cdr chars)
    | 'A'..'Y' as c -> (char ((int c - int 'A' + 4) mod 26 + int 'A')) :: helper (cdr chars)
    | 'Z' as c -> (char ((int c - int 'A' + 4) mod 26 + int 'A')) :: helper (cdr chars)
    | _ -> c :: helper (cdr chars)
  in
  let rec cdr (lst : 'a list) : 'a list = 
    match lst with
    | [] -> []
    | _ :: tl -> tl
  in
  String.of_seq (List.to_seq (helper (String.to_seq s)))

(* Test cases *)
let () =
  assert (encrypt "hi" = "lm");
  assert (encrypt "asdfghjkl" = "ewhjklnop");
  assert (encrypt "gf" = "kj");
  assert (encrypt "et" = "ix");


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
