let rec sum_div (number : int) : int = 
  let rec divisors acc div = 
    if div = number then 
      acc 
    else if number mod div = 0 then 
      divisors (acc + div) (div + 1) 
    else 
      divisors acc (div + 1) 
  in 
  divisors 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
