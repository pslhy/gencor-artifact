let rec are_equivalent (num1 : int) (num2 : int) : bool =
  let rec divisors n acc = if n = 0 then acc else divisors (n-1) (if num1 mod n = 0 then acc @ [n] else acc) in
  List.length (divisors num1 []) = List.length (divisors num2 [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to determine if the sum of the divisors of two integers are the same. *)
