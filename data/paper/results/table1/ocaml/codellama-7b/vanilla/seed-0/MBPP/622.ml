let rec get_median (arr1 : int list) (arr2 : int list) (n : int) : float =
  if n = 0 then 0.0
  else (float (arr1.(n-1) + arr2.(n-1))) /. 2.0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of two sorted lists of same size. *)
