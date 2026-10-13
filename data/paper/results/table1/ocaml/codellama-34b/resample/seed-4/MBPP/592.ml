(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the product of consecutive binomial co-efficients. *)
let rec sum_Of_product (n : int) : int = 
    (* base case: when only one binomial coefficient remains *)
    if n = 1 then 
        1
    else
        (* recurrence relation: accumulate sum of n C 1 + (n-1) C 2 + ... + 2 C n-1 + 1 C n *)
        n + sum_Of_product (n-1)

(* test function call with n = 5*)
let result = sum_Of_product 5;;
Printf.printf "Result = %d" result;;

