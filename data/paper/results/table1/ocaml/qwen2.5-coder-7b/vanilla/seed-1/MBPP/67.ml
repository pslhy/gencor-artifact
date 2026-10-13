let rec bell_number (n : int) : int = 
  if n = 0 then 1
  else 
    let rec sum (k : int) (acc : int) : int = 
      if k = 0 then acc
      else sum (k - 1) (acc + ((-1) ** k) * (binomial n k) * (bell_number (n - k)))
    in 
    sum n 0

and binomial (n : int) (k : int) : int = 
  if k = 0 || k = n then 1
  else (binomial (n - 1) (k - 1)) + (binomial (n - 1) k)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
