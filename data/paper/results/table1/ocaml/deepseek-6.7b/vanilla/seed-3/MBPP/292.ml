let rec find (n : int) (m : int) : int =
  if m = 0 then
    failwith "Division by zero"
  else if n < m then 0
  else 1 + find (n - m) m
;;

let divide (n : int) (m : int) : int =
  try find n m
  with Failure _ -> 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find quotient of two numbers (rounded down to the nearest integer). *)
