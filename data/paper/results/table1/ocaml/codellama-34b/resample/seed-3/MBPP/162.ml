(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the sum (n - 2*i) from i=0 to n // 2, for instance n + (n-2) + (n-4)... (until n-x =< 0). *)
let rec sum_series (n : int) : int =
  if n <= 0 then n else
  let half = n - n/2 in
  let sum = n + half in
    if n mod 2 <> 0 then sum + (n - 2 * (half - 1))
    else sum

