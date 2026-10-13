let rec last_Digit_Factorial (n : int) : int =
  let rec loop x i =
    if x = 0 || x = 1 then i
    else loop (x-1) (i * (x mod 10))
  in 
  let rec fatorial x = 
    if x = 0 || x = 1 then 1
    else x * fatorial (x-1)
  in 
  loop (fatorial n) 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the last digit in factorial of a given number. *)
