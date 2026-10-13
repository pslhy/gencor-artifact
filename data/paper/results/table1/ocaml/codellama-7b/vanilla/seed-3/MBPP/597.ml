let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  if k = 1 then
    min [arr1; arr2]
  else if k = 2 then
    max [arr1; arr2]
  else if k = 3 then
    min (List.tl [arr1; arr2])
  else
    (-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
