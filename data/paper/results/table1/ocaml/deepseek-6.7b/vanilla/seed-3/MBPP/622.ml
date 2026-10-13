let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  match (arr1, arr2) with
  | ([], []) -> 0.0
  | (x::xs, y::ys) ->
     if n mod 2 = 0 then
       (max x y + min x y) /. 2.0
     else
       float(max x y)

let sorted_median (arr1 : int list) (arr2 : int list) = 
  let n = List.length arr1 in
  if n=0 then 0.0
  else get_median (List.sort compare arr1) (List.sort compare arr2) n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
