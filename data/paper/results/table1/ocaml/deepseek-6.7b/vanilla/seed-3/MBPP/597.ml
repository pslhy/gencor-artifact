let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  match (arr1, arr2) with
  | ([], _) -> List.nth arr2 (k-1)
  | (_, []) -> List.nth arr1 (k-1)
  | (h1::t1, h2::t2) when h1 < h2 -> find_kth t1 arr2 (k-1)
  | (h1::t1, h2::t2) -> find_kth arr1 t2 (k-1)
  | _ -> -1 (*-1 is returned as an invalid case*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
