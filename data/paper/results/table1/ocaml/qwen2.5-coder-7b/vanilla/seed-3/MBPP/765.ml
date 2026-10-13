let rec is_polite (n : int) : int = 
  if n land 1 = 0 then n else is_polite (n + 1)

let rec find_nth_polite (n : int) (count : int) (current : int) : int =
  if count = n then current else find_nth_polite n (count + 1) (is_polite (current + 1))

let nth_polite (n : int) : int =
  find_nth_polite n 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
