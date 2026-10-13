
let rec count_rotation (arr : int list) : int =
    match arr with
    | [] | [_] -> 0
    | x :: y :: rest ->
        if x > y then 1 + count_rotation (y :: rest)
        else count_rotation (y :: rest)

let count_rotations arr : int =
    let n = List.length arr in
    let rec aux i acc =
        if i = n then acc
        else aux (i + 1) (count_rotation (List.nth arr i) + acc) in
    aux 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of rotations required to generate a sorted list. https://www.geeksforgeeks.org/count-of-rotations-required-to-generate-a-sorted-list/ *)
