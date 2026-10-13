let rec find_min_diff (arr : int list) (n : int) : int =
    match arr with
    | [] -> Int.max_int
    | x :: xs -> min (find_diff x xs) (find_min_diff xs n)

and find_diff (x : int) (arr : int list) : int =
    match arr with
    | [] -> Int.max_int
    | y :: ys -> min (abs (x - y)) (find_diff x ys)

let min_diff arr = 
    let n = List.length arr in
    find_min_diff (List.sort compare arr) n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
