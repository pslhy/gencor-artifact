let rec sum (a : int) (b : int) : int =
  let rec common_divisors a b i sum =
    if i > a || i > b then 
      sum 
    else if a mod i = 0 && b mod i = 0 then 
      common_divisors a b (i + 1) (sum + i) 
    else 
      common_divisors a b (i + 1) sum
  in 
  common_divisors a b 1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
