let rec divisor (n : int) : int = 
  let rec helper (count : int) (i : int) : int = 
    if i * i > n then count
    else if n mod i = 0 then 
      if i * i = n then helper (count + 1) (i + 1)
      else helper (count + 2) (i + 1)
    else helper count (i + 1)
  in
  if n <= 0 then 0 else helper 0 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
