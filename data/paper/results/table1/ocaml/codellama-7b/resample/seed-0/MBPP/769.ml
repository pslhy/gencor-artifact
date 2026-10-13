(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to get the difference between two lists. *)
let rec diff (li1 : int list) (li2 : int list) : int list =
  match li1, li2 with
  | [], _ -> li2
  | _, [] -> li1
  | x :: xs, y :: ys when x < y -> x :: diff xs (y :: ys)
  | _, _ -> diff li1 ys

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:22: Unbound value "ys" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff (li1 : int list) (li2 : int list) : int list =
  match li1, li2 with
  | [], _ -> li2
  | _, [] -> li1
  | x :: xs, y :: ys when x < y -> x :: diff xs (y :: ys)
  | x :: xs, (y :: ys) -> y :: diff xs ys

