let rec max_run_uppercase (test_str : string) : int =
  let rec max_lowercase_helper (curr_len : int) (curr_max : int) (idx : int) : int =
    if idx >= String.length test_str then
      curr_max
    else
      let char = test_str.[idx] in
      if Char.is_uppercase char then
        max_lowercase_helper curr_len max_uppercase (idx + 1)
      else if curr_len > curr_max then
        max_lowercase_helper (idx + 1) (idx + 1) (idx + 1)
      else
        max_lowercase_helper (idx + 1) curr_max (idx + 1)
  in
  if String.length test_str <= 0 then
    raise (Invalid_argument "Empty string")
  else
    max_lowercase_helper 0 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
