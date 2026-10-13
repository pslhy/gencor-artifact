let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int = 
  if k <= 0 then invalid_arg "k must be greater than 0" 
  else if arr1 = [] then List.nth arr2 (k - 1) 
  else if arr2 = [] then List.nth arr1 (k - 1) 
  else if List.hd arr1 <= List.hd arr2 then find_kth (List.tl arr1) arr2 (k - 1) 
  else find_kth arr1 (List.tl arr2) (k - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
