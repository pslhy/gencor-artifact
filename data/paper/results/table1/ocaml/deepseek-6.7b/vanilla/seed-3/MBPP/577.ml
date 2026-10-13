let rec last_Digit_Factorial (n : int) : int =
    let rec iter (acc : int) (x : int) : int =
        if x = 0 then acc
        else iter ((acc * x) mod 10) (x - 1)
    in iter 1 n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
