let rec replace_spaces (text : string) : string =
  if String.contains text ' ' then
    String.sub text ~pos:0 ~len:(String.length text) ^ " "
  else
    String.sub text ~pos:0 ~len:(String.length text) ^ "_"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
