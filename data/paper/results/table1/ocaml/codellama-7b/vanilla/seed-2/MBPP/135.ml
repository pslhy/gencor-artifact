let rec hexagonal_num (n : int) : int =
  match n with
  | 1 -> 1
  | n -> 4 * (hexagonal_num (n - 1)) + 1

let nth_hexagonal (n : int) : int =
  hexagonal_num n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth hexagonal number. *)
