
let rec highest_Power_of_2 (n : int) : int = 
    (* base case: 2 with the highest power *) 
    if n = 2 then 2 else 
    (* check if n is a power of 2 *) 
    if n mod 2 = 0 && highest_Power_of_2 (n / 2) >= n then n / 2 
    (* higher power of 2 is less than or equal to n *) 
    else highest_Power_of_2 (n / 2)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the highest power of 2 that is less than or equal to n. *)
