let rec is_perfect_square (n : int) : bool = 
  let rec check (i : int) : bool = 
    if i * i = n then true 
    else if i * i > n then false 
    else check (i + 1) 
  in 
  if n < 0 then false 
  else check 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/ *)
