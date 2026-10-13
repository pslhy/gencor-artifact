(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
let rec check_min_heap (arr : int list) : bool = 
    let n = List.length arr in
    let mid = n / 2 in
    let rec helper (index : int) : bool = 
        if index >= mid then true
        else if arr.(index) < arr.(2 * index + 1) && arr.(index) < arr.(2 * index + 2) then helper (index + 1)
        else false
    in
    helper 0

