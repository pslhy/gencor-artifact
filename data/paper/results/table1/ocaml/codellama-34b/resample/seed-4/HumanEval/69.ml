(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You are given a non-empty list of positive integers. Return the greatest integer that is greater than *)
(*     zero, and has a frequency greater than or equal to the value of the integer itself. *)
(*     The frequency of an integer is the number of times it appears in the list. *)
(*     If no such a value exist, return -1. *)
(*     Examples: *)
(*     >>> search [4; 1; 2; 2; 3; 1] *)
(*     2 *)
(*     >>> search [1; 2; 2; 3; 3; 3; 4; 4; 4] *)
(*     3 *)
(*     >>> search [5; 5; 4; 4; 4] *)
(*     (-1) *)
let rec search (lst : int list) : int = 
    let hd = lst in
    let tl = lst in
    let freq = 1 in
    match tl with 
    | [] -> if hd >= freq then hd else -1
    | hd :: tl -> if hd >= freq then hd else search tl
 
(* test cases *) 
let lst = [4; 1; 2; 2; 3; 1] in 
print_int (search lst);
print_newline ();

let lst = [1; 2; 2; 3; 3; 3; 4; 4; 4] in
print_int (search lst);
print_newline ();

let lst = [5; 5; 4; 4; 4] in
print_int (search lst);
print_newline ()

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:30: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec search (lst : int list) : int = 
    let hd = lst in
    let tl = lst in
    let freq = 1 in
    match tl with 
    | [] -> if hd >= freq then hd else -1
    | hd :: tl -> if hd >= freq then hd else search tl

