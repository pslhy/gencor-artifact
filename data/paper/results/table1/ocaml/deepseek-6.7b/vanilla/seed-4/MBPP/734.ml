let rec sum_Of_Subarray_Prod (arr : int list) : int =
  let len = List.length arr in
  let prod = List.fold_left ( * ) 1 arr in
  if len = 0 then 0
  else prod + sum_Of_Subarray_Prod (List.tl arr) * len


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find sum of products of all possible sublists of a given list. https://www.geeksforgeeks.org/sum-of-products-of-all-possible-sublists/ *)
