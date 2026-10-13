(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
let rec count_rotation (arr : int list) : int =
    match arr with
    | [] | [_] -> 0
    | head :: tail -> if tail = [] then 0 else
                    1 + count_rotation (List.hd (List.tl arr) :: (List.hd arr) :: (List.tl (List.tl arr)))

