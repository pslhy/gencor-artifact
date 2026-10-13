let rec special_factorial (n : int) : int =
  if n = 0 then 1
  else n * (n - 1) * (special_factorial (n - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     The Brazilian factorial is defined as: *)
(*     brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1! *)
(*     where n > 0 *)
(*     For example: *)
(*     >>> special_factorial 4 *)
(*     288 *)
(*     The function will receive an integer as input and should return the special *)
(*     factorial of this integer. *)
