let rec find_Odd_Pair (a : int list) (n : int) : int =
  if n = 0 then
    0
  else if (a.(n) = a.(n-1)) then
    find_Odd_Pair a (n-2)
  else if (a.(n) = a.(n-2)) then
    find_Odd_Pair a (n-1)
  else if (a.(n) <> a.(n-1)) && (a.(n) <> a.(n-2)) then
    find_Odd_Pair a (n-1)
  else
    find_Odd_Pair a (n-2)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose xor value is odd. *)
