let rec sum_average (number : int) :  int * float = 
  let rec sum n total = 
    if n <= 1 then n + total 
    else sum (n - 1) (n + total)
  in
  let total_sum = sum number 0 in
  let average = if number = 0 then 0.0 else float total_sum /. float number in
  (total_sum, average)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
