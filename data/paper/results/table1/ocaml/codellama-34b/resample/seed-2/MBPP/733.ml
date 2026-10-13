(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the index of the first occurrence of a given number in a sorted list. *)
let rec find_first_occurrence (a : int list) (x : int) : int =
  match a with
  | [] -> -1
  | (y::ys) ->
      if x = y then 0
      else 1 + find_first_occurrence ys x

