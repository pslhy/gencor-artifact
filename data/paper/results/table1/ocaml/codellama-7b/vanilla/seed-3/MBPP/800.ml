let rec remove_all_spaces (text : string) : string =
  if String.contains text ' ' then
    String.sub text ~pos:0 ~len:(String.index text ' ') ^ remove_all_spaces (String.sub text ~pos:(String.index text ' ') ~len:(String.length text - String.index text ' '))
  else
    text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
