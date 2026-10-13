let rec count_samepair (list1 : int list) (list2 : int list) (list3 : int list) : int =
  match (list1, list2, list3) with
  | ([], [], []) -> 0
  | (x::xs, y::ys, z::zs) ->
     if x == y && y == z then 1 + count_samepair xs ys zs
     else count_samepair xs ys zs
  | _ -> failwith "lists must have equal length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count number items that are identical in the same position of three given lists. *)
