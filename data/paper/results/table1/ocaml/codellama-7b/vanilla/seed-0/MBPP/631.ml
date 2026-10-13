let rec replace_spaces (text : string) : string =
  match text with
  | "" -> ""
  | _ ->
    let is_space = (text.[0] = ' ') in
    let rest = replace_spaces (String.sub text 1 (String.length text - 1)) in
    (if is_space then '_' else ' ') ^ rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
