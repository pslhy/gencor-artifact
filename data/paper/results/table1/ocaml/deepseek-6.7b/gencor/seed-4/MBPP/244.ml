
let rec next_Perfect_Square (n : int) : int =
  let next = n + 1 in
  if Float.sqrt (float_of_int next) = int_of_float (sqrt (float_of_int next)) then
    next
  else
    next_Perfect_Square (next);;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
