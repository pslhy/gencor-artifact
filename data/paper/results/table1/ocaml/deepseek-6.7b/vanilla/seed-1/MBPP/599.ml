let rec sum_average (number : int) :  int * float =
  let recurse = sum_average (number - 1) in
  let previous_sum, previous_avg = recurse in
  let current_sum = previous_sum + number in
  let current_avg = float current_sum /. float number in
  (current_sum, current_avg)

let start_number = 5
let sum, avg = sum_average start_number

let () = Printf.printf "Sum of first %d natural numbers is %d\n" start_number sum
let () = Printf.printf "Average of first %d natural numbers is %f\n" start_number avg


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
