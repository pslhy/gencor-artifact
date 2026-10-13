
let rec max_run_uppercase (test_str : string) : int =
  let rec max_lowercase_helper (curr_len : int) (curr_max : int) (idx : int) : int =
    if idx >= String.length test_str then
      curr_max
    else
      let char = test_str.[idx] in
      if Char.lowercase_ascii char = char then
        max_lowercase_helper (curr_len + 1) curr_max (idx + 1)
      else
        max_lowercase_helper 0 (max curr_max curr_len) (idx + 1)
  in
  max_lowercase_helper 0 0 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
