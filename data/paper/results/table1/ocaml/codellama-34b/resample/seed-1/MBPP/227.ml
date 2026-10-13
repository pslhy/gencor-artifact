(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find minimum of three numbers. *)
let rec min_of_three (a : int) (b : int) (c : int) : int =
    let min2 x y = if x < y then x else y in
    min2 (min2 a b) c

