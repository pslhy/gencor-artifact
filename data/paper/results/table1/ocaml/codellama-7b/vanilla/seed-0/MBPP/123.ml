let rec amicable_numbers_sum (limit : int) : int =
  let rec sum_of_factors (n : int) (i : int) : int =
    if i >= n then
      0
    else
      n mod i + sum_of_factors n (i + 1)
  in
  let rec amicable_pairs (i : int) (j : int) : int option =
    if i > j then
      None
    else if sum_of_factors i = j && sum_of_factors j = i then
      Some (i + j)
    else
      amicable_pairs (i + 1) j
  in
  let rec sum_helper (i : int) (j : int) : int =
    if j > limit then
      i
    else
      sum_helper (sum_helper i (j + 1)) j
  in
  sum_helper 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
