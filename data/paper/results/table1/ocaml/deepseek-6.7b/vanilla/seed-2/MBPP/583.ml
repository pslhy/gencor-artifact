let rec catalan_number (num : int) : int =
  if num <= 1 then 1
  else
    let rec calculate_catalan (n : int) : int = 
      if n <= 1 then n
      else 2 * (calculate_catalan (n-1) * catalan_number (n-1))
    in
    calculate_catalan num;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
