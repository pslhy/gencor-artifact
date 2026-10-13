(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list. *)
(*     Empty sum should be equal to 0 and empty product should be equal to 1. *)
(*     >>> sum_product [] *)
(*     (0, 1) *)
(*     >>> sum_product [1; 2; 3; 4] *)
(*     (10, 24) *)
let rec sum_product (numbers : int list) :  int * int =
    match numbers with
    | [] -> (0, 1)
    | x :: xs -> (x + (fst (sum_product xs)), x * (snd (sum_product xs)))

