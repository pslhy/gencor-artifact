(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
let rec remove_parenthesis (items : string list) : string =
  match items with
  | [] -> []
  | item :: rest ->
      if item = "(" then remove_parenthesis rest
      else if item = ")" then item :: remove_parenthesis rest
      else item :: remove_parenthesis (item :: rest)

