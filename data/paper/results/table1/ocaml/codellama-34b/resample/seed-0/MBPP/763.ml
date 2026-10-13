(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
let rec find_min_diff (arr : int list) (n : int) : int =
    if n = 2 then
        abs (arr.(0) - arr.(1))
    else
        min (find_min_diff (arr : int list) (n - 1) : int)
            (abs (arr.(n-2) - arr.(n-1)) : int)

