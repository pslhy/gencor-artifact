let rec is_polite (n : int) : int =
  if n <= 1 then n else
  if n % 2 = 0 then is_polite (n / 2) else is_polite (n / 2) + is_polite ((n / 2) + 1)

let rec find_nth_polite (n : int) : int =
  let count = is_polite n in
  if count = n then n else find_nth_polite (n + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
