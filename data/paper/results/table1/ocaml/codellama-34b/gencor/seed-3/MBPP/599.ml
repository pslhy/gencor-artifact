
let rec sum_average (number : int) :  int * float =
  if number = 1 then
    (1, 1.0)
  else
    let n = number - 1 in
    let (curr_sum, curr_average) = sum_average n in
    (curr_sum + number, curr_average +. (number /. float_of_int n))

let number = 5

let (sum, average) = sum_average number

Printf.printf "Sum = %d Average = %f" sum_average

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find sum and average of first n natural numbers. *)
