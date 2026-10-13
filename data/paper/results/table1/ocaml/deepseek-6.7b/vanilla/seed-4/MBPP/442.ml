let rec positive_count (nums : int list) : float =
  match nums with
  | [] -> 0.0
  | x::rest -> if x > 0 then 1.0 + (positive_count rest) else positive_count rest 

let ratio_positive_numbers (nums : int list) : float =
  let count_positive = positive_count nums in
  let count_total = float_of_int (List.length nums) in
  if count_total = 0.0 then 0.0 else count_positive /. count_total


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
