(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
let rec unique_Element (arr : int list) : bool = 
    (* base case: if list is empty return true *)
    match arr with
    | [] -> true
    | x :: xs -> 
        (* check if the element x is in the rest of the list *)
        if List.mem x xs then false
        (* if element x is not in the list, then check the rest of the list recursively *)
        else unique_Element xs

