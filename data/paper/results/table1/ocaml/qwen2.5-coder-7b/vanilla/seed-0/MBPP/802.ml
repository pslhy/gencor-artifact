let rec count_rotation (arr : int list) : int = 
  let rec helper (lst : int list) (count : int) : int = 
    match lst with
    | [] | [_] -> count
    | x::y::t when x > y -> count + 1
    | x::y::t -> helper (y::t) count
  in 
  helper arr 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
