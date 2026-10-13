let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  let arr_len = List.length arr in
  let rotated_index = (index + rotations) mod arr_len in
  List.nth arr rotated_index


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
