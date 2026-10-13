(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest sublists. *)
let rec find_Max_Length (lst : int list list) : int = 
    match lst with 
    | head :: tail -> 
        (match tail with 
        |[] -> head : []
        | _ -> max(head) :: find_Max_Length(tail))
    | [] -> 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:24: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Length (lst : int list list) : int =
    match lst with
    | head :: tail ->
        (match tail with
        | [] -> head : []
        | _ -> max(head) :: find_Max_Length(tail))
    | [] -> 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:25: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Length (lst : int list list) : int =
    match lst with
    | head :: tail ->
        (match tail with
        | [] -> head
        | _ -> max(head) :: find_Max_Length(tail))
    | [] -> 0

