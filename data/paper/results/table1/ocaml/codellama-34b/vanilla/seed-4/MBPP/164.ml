let rec are_equivalent (num1 : int) (num2 : int) : bool =
    if num1 = 1 then
        num2 = 1
    else if num2 = 1 then
        false
    else if num1 mod 2 = 0 && num2 mod 2 = 0 then
        are_equivalent (num1 / 2) (num2 / 2)
    else if num1 mod 2 = 1 && num2 mod 2 = 1 then
        are_equivalent (num1 / 2) (num2 / 2)
    else
        false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
