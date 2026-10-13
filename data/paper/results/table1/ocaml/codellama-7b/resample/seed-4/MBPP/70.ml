(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find whether all the given lists have equal length or not. *)
let rec get_equal (input : int list list) : bool = 
    match input with 
    | head :: tail -> 
        (match tail with 
        | [] -> true 
        | _ :: tail -> get_equal tail ) && List.length head = List.length tail 
    | _ -> true
in function get_equal 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_equal (input : int list list) : bool =
    match input with
    | [] -> true
    | head :: tail ->
        List.length head = List.length tail && get_equal tail
in get_equal

