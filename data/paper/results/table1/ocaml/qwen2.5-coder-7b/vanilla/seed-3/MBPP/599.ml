let rec sum_average (number : int) :  int * float = 
  let rec sum (n : int) accumulator : int = 
    if n = 0 then accumulator
    else sum (n-1) (n + accumulator)
  in
  let total_sum = sum number 0 in
  let average = float total_sum /. float number in
  (total_sum, average)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
