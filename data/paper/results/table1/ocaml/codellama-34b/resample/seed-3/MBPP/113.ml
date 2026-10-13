(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
let rec check_integer (text : string) : bool =
  if String.length text = 0 then
    false
  else if String.get text 0 = '-' then
    check_integer (String.sub text 1 ((String.length text) - 1))
  else if String.get text 0 = '+' then
    check_integer (String.sub text 1 ((String.length text) - 1))
  else if String.get text 0 >= '0' && String.get text 0 <= '9' then
    check_integer (String.sub text 1 ((String.length text) - 1))
  else
    false

