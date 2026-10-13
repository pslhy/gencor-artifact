(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
let rec odd_position (nums : int list) : bool = 
    (* base case: empty list with no odd positions *)
    let rec odd_position nums = 
        match nums with
        | [] -> true
        | [x] -> x mod 2 = 1
        | hd :: tl -> hd mod 2 = 1 && odd_position tl

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec odd_position (nums : int list) : bool = 
    match nums with
    | [] -> true
    | [x] -> x mod 2 = 1
    | hd :: tl -> hd mod 2 = 1 && odd_position tl

