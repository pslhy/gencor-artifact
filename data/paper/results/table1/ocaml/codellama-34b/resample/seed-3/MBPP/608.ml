(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
let rec bell_Number (n : int) : int =
  if n = 1 then
    1
  else if n = 2 then
    2
  else
    bell_Number (n - 1) + bell_Number (n - 2)

