let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  match (arr1, arr2) with
  | ([], _) -> List.nth arr2 (k-1)
  | (_, []) -> List.nth arr1 (k-1)
  | (x::xs, y::ys) -> 
     if x <= y then 
       if k = 1 then x else find_kth xs (y::ys) (k-1)
     else
       if k = 1 then y else find_kth (x::xs) ys (k-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
