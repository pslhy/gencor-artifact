let rec median_numbers (a : int) (b : int) (c : int) : float =
  if (a <= b) && (b <= c) then (a + b + c) /. 3.0
  else if (a <= c) && (c <= b) then (a + c + b) /. 3.0
  else if (b <= a) && (a <= c) then (b + a + c) /. 3.0
  else if (b <= c) && (c <= a) then (b + c + a) /. 3.0
  else if (c <= a) && (a <= b) then (c + a + b) /. 3.0
  else if (c <= b) && (b <= a) then (c + b + a) /. 3.0
  else raise (Failure "median_numbers: Invalid input")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
