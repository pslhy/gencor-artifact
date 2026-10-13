let rec is_woodall (x : int) : bool = 
  if x <= 0 then false
  else if x = 1 then true
  else if x mod 2 = 0 then false
  else let rec helper n m = 
    if n mod m = 0 then false
    else if m * m > n then true
    else helper n (m + 2) in helper x 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given number is woodball or not. *)
