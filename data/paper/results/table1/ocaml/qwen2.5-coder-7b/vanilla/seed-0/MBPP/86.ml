let rec centered_hexagonal_number (n : int) : int = 
  if n <= 0 then 1
  else 1 + 6 * (n - 1) + centered_hexagonal_number (n - 1)

let nth_centered_hexagonal_number (n : int) : int = 
  centered_hexagonal_number n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
