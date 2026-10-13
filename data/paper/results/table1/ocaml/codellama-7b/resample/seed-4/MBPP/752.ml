(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ... *)
let rec jacobsthal_num (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        let a = jacobsthal_num (n-1)
        let b = jacobsthal_num (n-2)
        let c = a + b
        c
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec jacobsthal_num (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        let a = jacobsthal_num (n-1);;
	let b = jacobsthal_num (n-2) in
        b + a + b;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:37: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec jacobsthal_num (n : int) : int = 
    if n = 1 then
        0
    else if n = 2 then
        1
    else
        let a = jacobsthal_num (n-1) in
        let b = jacobsthal_num (n-2) in
        b + a + b;;

