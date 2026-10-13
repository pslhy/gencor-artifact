(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:10: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec max_lowercase_helper (curr_len : int) (curr_max : int) (idx : int) : int =
    if idx >= String.length test_str then
      curr_max
    else
      let char = test_str.[idx] in
      if Char.code char >= 65 && Char.code char <= 90 then
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

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:39: Unbound value "max_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec max_lowercase_helper (curr_len : int) (curr_max : int) (idx : int) : int =
    if idx >= String.length test_str then
      curr_max
    else
      let char = test_str.[idx] in
      if Char.code char >= 65 && Char.code char <= 90 then
        max_lowercase_helper curr_len curr_max (idx + 1)
      else if curr_len > curr_max then
        max_lowercase_helper (idx + 1) (idx + 1) (idx + 1)
      else
        max_lowercase_helper (idx + 1) curr_max (idx + 1)
  in
  if String.length test_str <= 0 then
    raise (Invalid_argument "Empty string")
  else
    max_lowercase_helper 0 0 0

