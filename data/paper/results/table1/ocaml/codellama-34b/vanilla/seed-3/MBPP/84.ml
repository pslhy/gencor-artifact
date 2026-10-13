let rec sequence (n : int) : int =
  if n = 1 then
    1
  else if n = 2 then
    1
  else
    sequence(n-1) + sequence(n-2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth number in the newman conway sequence. *)
