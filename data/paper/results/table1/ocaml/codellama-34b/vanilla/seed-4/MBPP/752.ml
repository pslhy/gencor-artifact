let rec jacobsthal_num (n : int) : int = 
    if n == 0 then
        0
    else if n == 1 then
        1
    else
        let prev = jacobsthal_num(n-1) in
        let prev_prev = jacobsthal_num(n-2) in
        prev_prev + prev
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth jacobsthal number. https://www.geeksforgeeks.org/jacobsthal-and-jacobsthal-lucas-numbers/ 0, 1, 1, 3, 5, 11, 21, 43, 85, 171, 341, 683, 1365, 2731, ... *)
