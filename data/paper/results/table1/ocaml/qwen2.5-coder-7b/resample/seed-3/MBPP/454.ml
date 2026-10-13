(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
let rec text_match_wordz (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> helper rest in
  helper (String.to_list text)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:11: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec text_match_wordz (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> helper rest in
  helper (List.of_seq (String.to_seq text))

