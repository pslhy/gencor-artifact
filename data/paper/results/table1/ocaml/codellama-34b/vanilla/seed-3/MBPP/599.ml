let rec sum_average (number : int) :  int * float =
  if number = 1 then
    (1, 1.0)
  else
    let n = number - 1 in
    let (curr_sum, curr_average) = sum_and_average (n) in
    curr_sum + number, curr_average + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
