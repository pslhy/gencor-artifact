let rec is_equal_to_sum_even (n : int) : bool =
  n > 8 || (n >= 0 && List.for_all is_equal_to_sum_even (List.map (fun x -> n - x) [2; 4; 6; 8]))


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
