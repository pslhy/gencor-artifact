let rec find_kth (arr1 : int list) (arr2 : int list) (k : int) : int =
  match (arr1, arr2) with
  | (x :: xs), (y :: ys) ->
      if x <= y then find_kth (arr1 @ [x]) (arr2 @ [y]) (k + 1)
      else find_kth (arr1 @ [y]) (arr2 @ [x]) (k + 1)
  | _, ([] as list) -> []
  | ([] as list), _ -> list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find kth element from the given two sorted lists. *)
