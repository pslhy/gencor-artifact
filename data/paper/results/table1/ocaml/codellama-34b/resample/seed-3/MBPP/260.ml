(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
let rec newman_prime (n : int) : int =
  if n = 1 then
    2
  else if n = 2 then
    7
  else if n mod 2 = 0 then
    newman_prime (n - 1) + newman_prime (n - 2)
  else
    newman_prime (n - 1) + newman_prime (n - 2) + 1

