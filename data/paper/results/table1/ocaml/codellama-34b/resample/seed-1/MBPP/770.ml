(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of fourth power of first n odd natural numbers. *)
let rec odd_num_sum (n : int) : int =
    if n <= 0 then 0
    else if n mod 2 = 0 then odd_num_sum (n - 1)
    else n * n * n * n + odd_num_sum (n - 1)

let sum_of_fourth_power_of_first_n_odd_natural_numbers (n : int) : int =
    if n <= 0 then 0
    else odd_num_sum n

