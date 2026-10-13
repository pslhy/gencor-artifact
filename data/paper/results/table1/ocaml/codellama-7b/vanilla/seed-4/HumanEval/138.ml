let rec is_equal_to_sum_even (n : int) : bool =
  if n <= 0 then
    false
  else if n = 2 then
    true
  else if n mod 2 = 0 then
    is_equal_to_sum_even (n - 2)
  else
    false
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers *)
(*     Example *)
(*     >>> is_equal_to_sum_even 4 *)
(*     false *)
(*     >>> is_equal_to_sum_even 6 *)
(*     false *)
(*     >>> is_equal_to_sum_even 8 *)
(*     true *)
