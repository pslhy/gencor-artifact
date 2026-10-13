let rec sum_in_range (l : int) (r : int) : int =
  if l > r then 0 
  else 
    if l mod 2 = 1 then l + sum_in_range (l + 1) r
    else sum_in_range (l + 1) r


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of all odd natural numbers within the range l and r. *)
