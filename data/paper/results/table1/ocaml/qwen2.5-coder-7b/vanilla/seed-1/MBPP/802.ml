let rec count_rotation (arr : int list) : int = 
  let rec check (lst : int list) (min : int) (index : int) : int = 
    match lst with
    | [] -> index
    | x :: xs -> 
        if x < min then check xs x (index + 1)
        else check xs min index
  in check.arr 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
