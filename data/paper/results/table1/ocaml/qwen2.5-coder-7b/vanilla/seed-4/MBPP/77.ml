let rec is_Diff (n : int) : bool = 
  let rec calculate_diff (n : int) (acc : int) : int = 
    if n < 10 then n - acc 
    else calculate_diff (n / 10) ((n mod 10) - acc) 
  in 
  let diff = calculate_diff n 0 in 
  diff == 0 || diff == 11 || diff == -11


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
