let rec sum_to_n (n : int) : int =
    if n <= 1 then n
    else n + (sum_to_n (n - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     sum_to_n is a function that sums numbers from 1 to n. *)
(*     >>> sum_to_n 30 *)
(*     465 *)
(*     >>> sum_to_n 100 *)
(*     5050 *)
(*     >>> sum_to_n 5 *)
(*     15 *)
(*     >>> sum_to_n 10 *)
(*     55 *)
(*     >>> sum_to_n 1 *)
(*     1 *)
