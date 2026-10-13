let rec big_sum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [n] -> n
  | n :: ns -> n + big_sum ns

let rec small_sum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [n] -> n
  | n :: ns -> n + small_sum ns

let sum_of_largest_and_smallest (nums : int list) : int =
  big_sum (List.rev (List.sort compare nums)) + small_sum (List.sort compare nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
