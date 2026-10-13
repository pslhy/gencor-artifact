(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the nth hexagonal number. *)
let rec hexagonal_num (n : int) : int =
  if n < 1 then failwith "input must be greater than 0"
  else if n = 1 then 1
  else 3 * n - 2 in n + hexagonal_num (n - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hexagonal_num (n : int) : int =
  if n <= 0 then 0
  else n * (2 * n - 1)

