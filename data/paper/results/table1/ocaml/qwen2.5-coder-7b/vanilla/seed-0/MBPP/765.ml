let rec is_polite (n : int) : int = 
  if n <= 2 then 1
  else
    if n land 1 = 0 then 1 + (is_polite (n lsr 1))
    else is_polite (n - 1)

let rec nth_polite (n : int) (count : int) : int =
  if count = n then n
  else nth_polite (n + 1) (if is_polite n then count + 1 else count)

let nth_polite_number (n : int) : int =
  nth_polite n 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
