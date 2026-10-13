(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the perimeter of a regular pentagon from the length of its sides. *)
let rec perimeter_pentagon (a : int) : int =
  if a = 1 then
    1
  else
    a + perimeter_pentagon(a-1)

