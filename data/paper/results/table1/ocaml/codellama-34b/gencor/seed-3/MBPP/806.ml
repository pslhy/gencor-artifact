
let rec max_run_uppercase (test_str : string) : int =
  if test_str = "" then 0
  else if test_str.[0] >= 'A' && test_str.[0] <= 'Z' then
    let index = String.lowercase_ascii test_str in
    max_run_uppercase test_str.[index + 1..(String.length test_str) - 1]
  else 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
