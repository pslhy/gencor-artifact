let rec last_Digit_Factorial (n : int) : int = 
  let rec factorial (num : int) : int = 
    if num = 0 then 1
    else num * (factorial (num - 1))
  in
  let rec last_digit (num : int) : int = 
    num mod 10
  in
  last_digit (factorial n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
