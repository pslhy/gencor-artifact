
let rec max_sub_array_sum (a : int list) (size : int) : int =
  if size = 1 then
    List.hd a
  else if size > 1 then
    let subarray1_sum = max_sub_array_sum (a.(0 :: size - 1)) (size - 1) in
    let subarray2_sum = max_sub_array_sum (a.(size - 1 :: size)) (size - 1) in
    max subarray1_sum subarray2_sum
  else
    0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
