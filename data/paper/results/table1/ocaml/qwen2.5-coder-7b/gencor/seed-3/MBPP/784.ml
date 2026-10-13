
let rec mul_even_odd (list1 : int list) : int = 
 let aux acc1 acc2 = function 
 | [] -> acc1 * acc2
 | x::xs -> if x mod 2 = 0 then acc1 * (acc2 * x) else (acc1 * x) * acc2 in
 aux 1 1 list1;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the product of first even and odd number of a given list. *)
