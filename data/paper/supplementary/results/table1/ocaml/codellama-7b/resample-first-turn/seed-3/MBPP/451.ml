let rec remove_whitespaces (text1 : string) : string =
  if String.length text1 = 0 then
    text1
  else
    match text1.[0] with
    | ' ' | '\n' | '\t' | ' ' -> remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
    | _ -> remove_whitespaces (String.sub text1 1 (String.length text1 - 1)) ^ String.get text1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
