
let rec centered_hexagonal_number (n : int) : int =
  if n = 1 then n else
  (if n mod 2 != 0 then (n * n) + 1
  else (n / 2) * (n / 2) + 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
