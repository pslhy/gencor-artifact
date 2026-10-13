
let rec sum_average (number : int) :  int * float =
match number with
| 1 -> 1, 1.0
| _ -> let (sum, average) = sum_average (number - 1) in
sum + number, (average + (float_of_int number / (float_of_int number))) in
sum_average

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
