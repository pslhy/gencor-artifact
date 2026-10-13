(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last position of an element in a sorted list. *)
let rec last (arr : int list) (x : int) : int = 
    match arr with 
    | head :: tail -> 
        if head = x then length(arr) - 1
        else 1 + last tail x
    | [] -> -1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec last (arr : int list) (x : int) : int =
    match arr with
    | head :: tail ->
        if head = x then 1 + last tail x
        else 0
    | [] -> -1

