(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     From a list of integers, remove all elements that occur more than once. *)
(*     Keep order of elements left the same as in the input. *)
(*     >>> remove_duplicates [1; 2; 3; 2; 4] *)
(*     [1; 3; 4] *)
let rec remove_duplicates (numbers : int list) : int list =
  match numbers with
  | [] -> []
  | hd :: tl ->
      if (List.mem hd tl) then remove_duplicates tl
      else hd :: (remove_duplicates tl)

