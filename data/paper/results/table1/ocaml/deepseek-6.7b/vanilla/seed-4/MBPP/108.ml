let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  match num1, num2, num3 with
  | [], [], [] -> []
  | l1::r1, l2::r2, l3::r3 when l1 <= l2 && l1 <= l3 -> l1 :: merge_sorted_list r1 num2 num3
  | l1::r1, l2::r2, l3::r3 when l2 <= l1 && l2 <= l3 -> l2 :: merge_sorted_list num1 r2 num3
  | l1::r1, l2::r2, l3::r3 -> l3 :: merge_sorted_list num1 num2 r3;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
