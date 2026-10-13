let rec digit_distance_nums (n1 : int) (n2 : int) : int = 
  let rec digit_distance (d1 : int) (d2 : int) = abs (d1 - d2) in
  let rec sum_digits n sum so_far = 
    if n = 0 then sum + so_far
    else sum_digits (n / 10) (sum + digit_distance (n mod 10) (n2 mod 10)) (n2 / 10) in
  sum_digits n1 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
