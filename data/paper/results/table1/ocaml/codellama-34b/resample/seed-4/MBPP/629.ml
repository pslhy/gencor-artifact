(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find even numbers from a list of numbers. *)
let rec split (list : int list) : int list = 
    match list with 
    | head :: tail -> 
        (match head with 
        | x when x % 2 = 0 -> tail)
    | [] -> []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list = 
    match list with 
    | head :: tail -> 
        (match head with 
        | x when x % 2 = 0 -> tail)
    | [] -> []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list = 
    match list with 
    | head :: tail -> 
        (match head with 
        | x when x % 2 = 0 -> tail
        | x when x % 2 = 1 -> x :: tail)
    | [] -> []

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:20: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split (list : int list) : int list =
    match list with
    | [] -> []
    | head :: tail -> tail

