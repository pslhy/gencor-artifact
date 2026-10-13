let rec diff (li1 : int list) (li2 : int list) : int list =
  match li1, li2 with
  | [], _ -> li2
  | _, [] -> li1
  | x :: xs, y :: ys when x < y -> x :: diff xs (y :: ys)
  | _, _ -> diff li1 ys


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
