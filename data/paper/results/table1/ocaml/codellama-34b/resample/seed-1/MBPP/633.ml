(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of xor of all pairs of numbers in the given list. *)
let rec pair_xor_Sum (arr : int list) (n : int) : int =
    match arr with
    | h :: t ->
        (pair_xor_Sum (t :: [] : int list)) 0
    | [] -> n

