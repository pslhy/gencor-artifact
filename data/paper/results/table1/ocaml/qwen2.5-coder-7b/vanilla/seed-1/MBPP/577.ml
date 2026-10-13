let rec last_Digit_Factorial (n : int) : int = 
  let rec multiply (a: int) (b: int) : int = 
    match b with 
    | 0 -> 0
    | _ -> (a * (b mod 10)) mod 10 + multiply a (b - 1)
  in 
  let rec factorial (x : int) : int = 
    match x with 
    | 0 | 1 -> 1
    | _ -> multiply x (factorial (x - 1))
  in 
  factorial n mod 10


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
