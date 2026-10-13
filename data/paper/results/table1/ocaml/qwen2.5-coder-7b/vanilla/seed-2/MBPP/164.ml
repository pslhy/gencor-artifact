let rec are_equivalent (num1 : int) (num2 : int) : bool = 
    let rec sum_divisors n acc = 
        if n = 1 then acc + 1
        else if n mod acc = 0 then sum_divisors n (acc + n)
        else sum_divisors (n - 1) acc
    in sum_divisors num1 1 = sum_divisors num2 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
