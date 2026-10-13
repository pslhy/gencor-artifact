let rec count_rotation (arr : int list) : int = 
  let rec helper (arr : int list) (rotations : int) : int =
    match arr with
    | [] | [_] -> rotations
    | x::y::xs when x > y -> rotations + 1
    | _::xs -> helper xs (rotations + 1)
  in
  helper arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
