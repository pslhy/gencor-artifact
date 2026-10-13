(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
let rec is_polite (n : int) : int =
  if n <= 1 then n else
  if n % 2 = 0 then is_polite (n / 2) else is_polite (n / 2) + is_polite ((n / 2) + 1)

let rec find_nth_polite (n : int) : int =
  let count = is_polite n in
  if count = n then n else find_nth_polite (n + 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_polite (n : int) : int =
  if n <= 1 then n else
  if n mod 2 = 0 then is_polite (n / 2) else is_polite (n / 2) + is_polite ((n / 2) + 1)

let rec find_nth_polite (n : int) : int =
  let count = is_polite n in
  if count = n then n else find_nth_polite (n + 1)

