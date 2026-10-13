let rec big_sum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [x] -> x
  | x::xs -> if x > (big_sum xs) then max (big_sum xs) x else max x (big_sum xs)

let rec small_sum (nums : int list) : int =
  match nums with
  | [] -> 0
  | [x] -> x
  | x::xs -> if x < (small_sum xs) then min (small_sum xs) x else min x (small_sum xs)

let sum_largest_smallest (nums : int list) : int =
  big_sum nums + small_sum nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
