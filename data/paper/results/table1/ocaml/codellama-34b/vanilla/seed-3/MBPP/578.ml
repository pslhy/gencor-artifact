let rec interleave_lists (list1 : int list) (list2 : int list) (list3 : int list) : int list =
  if list1 = [] && list2 = [] && list3 = [] then []
  else [list1.hd; list2.hd; list3.hd] @ (interleave_lists list1.tl list2.tl list3.tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to interleave 3 lists of the same length into a single flat list. *)
