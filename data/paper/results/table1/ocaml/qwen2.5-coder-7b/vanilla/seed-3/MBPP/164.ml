let rec are_equivalent (num1 : int) (num2 : int) : bool = 
  let sum_divisors n = 
    let rec sum_helper i acc = 
      if i > n / 2 then acc 
      else if n mod i = 0 then sum_helper (i + 1) (acc + i) 
      else sum_helper (i + 1) acc 
    in sum_helper 1 0 
  in sum_divisors num1 = sum_divisors num2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
