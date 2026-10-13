(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of equal numbers from three given integers. *)
let rec test_three_equal (x : int) (y : int) (z : int) : int =
    match x, y, z with
    | a, a, a -> 3
    | a, a, b | a, b, a | b, a, a -> 2
    | a, b, c | b, c, a | c, a, b | c, b, a -> 1
    | a, b, d | b, a, d | a, d, b | b, d, a | d, a, b | d, b, a -> 0

