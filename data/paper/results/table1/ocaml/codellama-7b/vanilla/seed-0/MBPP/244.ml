let rec next_Perfect_Square (n : int) : int =
  if (n mod 10 = 9) && (n mod 100 <> 99) then
    n + 1
  else if (n mod 100 = 0) && (n mod 1000 <> 0) then
    n + 100
  else
    next_Perfect_Square ((n / 10) + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
