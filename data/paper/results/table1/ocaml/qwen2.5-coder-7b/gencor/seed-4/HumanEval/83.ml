
let rec starts_one_ends (n : int) : int = 
  if n = 1 then 1 else 8 * int_of_float (floor (pred (exp (log.   (float n)) * 2.)))

let count_one_start_end (n : int) : int = 
  let base = 8 in
  let digits = n - 1 in
  base * int_of_float (floor (pred (exp (log.  (float digits)) * 2.)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, return the count of the numbers of n-digit *)
(*     positive integers that start or end with 1. *)
