(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
let rec largest_neg (list1 : int list) : int =
    match list1 with
    | [] -> 0
    | [x] -> x
    | x::y::rest -> largest_neg (y::rest)

