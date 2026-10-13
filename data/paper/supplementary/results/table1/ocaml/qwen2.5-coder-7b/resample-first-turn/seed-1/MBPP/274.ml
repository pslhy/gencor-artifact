let rec even_binomial_Coeff_Sum (n : int) : int = 
  if n = 0 then 1
  else 
    let C = (Array.init (n+1) (fun k -> Int.fdiv (Int.factorial n) ((Int.factorial k) * (Int.factorial (n-k))))) in
    Array.fold_left (fun acc i -> if i mod 2 = 0 then acc + C.(i) else acc) 0 C


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a positive integer n and finds the sum of even index binomial coefficients. *)
