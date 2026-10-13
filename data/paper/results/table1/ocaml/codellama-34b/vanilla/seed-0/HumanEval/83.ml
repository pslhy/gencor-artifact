let rec starts_one_ends (n : int) : int =
    if n = 1 then 2
    else 2 * (n - 1) + starts_one_ends (n - 1)

let count n =
    if n < 1 then 0
    else starts_one_ends n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
