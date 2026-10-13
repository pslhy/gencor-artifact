(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find nth centered hexagonal number. *)
let rec centered_hexagonal_number (n : int) : int =
  if n = 1 then n else
  central_hexagonal_number(n - 1) + n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:3: Unbound value "central_hexagonal_number" *)
(*     Hint: Did you mean "centered_hexagonal_number"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec centered_hexagonal_number (n : int) : int =
  if n = 1 then n else
  centered_hexagonal_number(n - 1) + n

