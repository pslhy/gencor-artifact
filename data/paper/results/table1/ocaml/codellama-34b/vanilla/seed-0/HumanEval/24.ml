let rec largest_divisor (n : int) : int =
    if n mod 2 = 0 then
        largest_divisor (n / 2)
    else if n mod 3 = 0 then
        largest_divisor (n / 3)
    else if n mod 5 = 0 then
        largest_divisor (n / 5)
    else
        n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given number n, find the largest number that divides n evenly, smaller than n *)
(*     >>> largest_divisor 15 *)
(*     5 *)
