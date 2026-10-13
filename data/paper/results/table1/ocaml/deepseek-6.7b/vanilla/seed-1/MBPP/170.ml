let rec sum_range_list (list1 : int list) (m : int) (n : int) : int =
  match list1 with
  | [] -> 0
  | hd::tl -> if (hd > m) then sum_range_list tl m n else if (hd < n) then sum_range_list tl m n else hd + sum_range_list tl m n;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
