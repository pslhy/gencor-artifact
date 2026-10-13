(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
let rec count_rotation (arr : int list) : int = 
    (* base case: if the list is empty or there is only one element, no rotation is needed *)
    match arr with 
    | [] -> 0
    | [x] -> 0
    (* if the first element is less than or equal to the last element, no rotation is needed *)
    | x :: xs -> if x <= List.hd xs then 0 else 
        (* otherwise, count the number of rotations needed to shift all elements to the right *)
        count_rotation (List.tl xs) + 1

