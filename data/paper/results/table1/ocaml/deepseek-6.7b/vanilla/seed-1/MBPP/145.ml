let rec max_Abs_Diff (arr : int list) : int =
  match arr with
  | [] -> failwith "Empty List"
  | (x :: []) -> x
  | (x :: xs) -> x - min (max_Abs_Diff xs) x
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
