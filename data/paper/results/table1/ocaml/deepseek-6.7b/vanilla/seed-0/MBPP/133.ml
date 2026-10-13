let rec sum_negativenum (nums : int list) : int =
    match nums with 
    | [] -> 0
    | h::t -> if h < 0 then h + sum_negativenum t else sum_negativenum t

(* Test Cases *)
let test1 = sum_negativenum [1; 2; -3; 4; -5] =  -8
let test2 = sum_negativenum [1; 2; 3; 4; 5] =  0
let test3 = sum_negativenum [1; -2; 3; -4; 5] =  -9
let test4 = sum_negativenum [] = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the sum of the negative numbers of a given list of numbers. *)
