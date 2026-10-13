let rec text_match_wordz (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] -> false
    | 'z' :: rest -> true
    | _ :: rest -> helper rest in
  helper (String.to_list text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
