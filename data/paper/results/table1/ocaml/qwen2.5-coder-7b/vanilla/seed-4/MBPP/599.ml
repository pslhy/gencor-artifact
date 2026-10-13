let rec sum_average (number : int) :  int * float = 
  let rec calculate_sum (n : int) : int =
    if n = 0 then 0
    else n + (calculate_sum (n-1))
  in
  let total_sum = calculate_sum number in
  let average = float total_sum /. float number in
  (total_sum, average)

(* Example usage *)
let result = sum_average 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
