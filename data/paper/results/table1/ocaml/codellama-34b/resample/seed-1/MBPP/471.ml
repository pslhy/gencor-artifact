(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the product of the list multiplication modulo n. *)
let rec find_remainder (arr : int list) (n : int) : int =
    match arr with
    | [] -> 0
    | x :: xs -> (x * find_remainder xs n) mod n

