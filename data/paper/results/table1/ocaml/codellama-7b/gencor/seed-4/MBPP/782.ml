
let rec odd_length_sum (arr : int list) : int = 
    match arr with 
    | head :: tail -> 
        (match tail with 
        | sub :: sub_tail -> head + odd_length_sum (sub :: sub_tail) 
        | [] -> 0)
    | [] -> 0

let arr = [10; 20; 30; 40; 50; 60];;

Printf.printf "Sum of all odd length sublists: %d\n" (odd_length_sum arr);;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd length sublists. https://www.geeksforgeeks.org/sum-of-all-odd-length-sublists/ *)
