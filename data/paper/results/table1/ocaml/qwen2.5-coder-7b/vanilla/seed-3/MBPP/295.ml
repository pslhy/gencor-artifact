let rec sum_div (number : int) : int = 
  let rec sum_from_div (divisor : int) : int = 
    if divisor * divisor > number then 0
    else if number mod divisor = 0 then divisor + sum_from_div (divisor + 1)
    else sum_from_div (divisor + 1)
  in
  sum_from_div 1 + number

let sum_of_divisors (n : int) : int = 
  sum_div n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
