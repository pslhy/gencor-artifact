let rec hexagonal_num (n : int) : int = 
  if n = 1 then 1 else 6 * (n - 1) + hexagonal_num (n - 1)

let nth_hexagonal n = hexagonal_num (n - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth hexagonal number. *)
