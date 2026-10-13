
let rec is_not_prime (n : int) : bool = 
    (* Check if n is less than or equal to 1 *)
    if n <= 1 then false
    (* Check if n is greater than 1 and if it has more than 1 divisor *)
    else if n > 1 && List.length (List.filter (fun x -> x mod n = 0) [1..(n-1)]) > 1 then false
    else true;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
