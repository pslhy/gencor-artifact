let rec find_Odd_Pair (a : int list) (n : int) : int =
  if n = 1 then
    0
  else if n mod 2 != 0 then
    1 + find_Odd_Pair(a, n - 1)
  else
    find_Odd_Pair(a, n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
