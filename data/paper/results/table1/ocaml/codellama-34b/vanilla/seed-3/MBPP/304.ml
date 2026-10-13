let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int =
  if index < 0 || index > ranges.Length then raise (Invalid_argument "Index out of range") else
  if rotations = 0 then arr.(index) else
  let (left, right) = (0, ranges.Length - 1) in
  let (mid, value) = (left + (right - left) / 2, arr.(index)) in
  if ranges.(mid) = value then find_Element (rotate_Left arr mid) (rotate_Left ranges mid) (rotations - 1) (index - mid)
  else if value < ranges.(mid) then find_Element (rotate_Left arr mid) (rotate_Left ranges mid) (rotations - 1) (index - mid)
  else find_Element arr ranges (rotations - 1) (index - mid)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
