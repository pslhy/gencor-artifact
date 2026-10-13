(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth hexagonal number. *)
let rec hexagonal_num (n : int) : int =
    if n = 1 then 1
    else 1 + (2 * (hexagonal_num (n - 1)))

