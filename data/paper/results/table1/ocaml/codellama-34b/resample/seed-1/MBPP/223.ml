(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    let rec aux (arr : int list) (n : int) (x : int) (i : int) : bool =
        if i = n then
            false
        else if arr.(i) = x then
            true
        else
            aux arr n x (i + 1)
    in
    if n < 1 || arr.(0) = x then
        true
    else if n < 2 && arr.(1) = x then
        true
    else 
        aux arr n x 2

