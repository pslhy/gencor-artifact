(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int =
    let test_str_length = String.length test_str in
    if test_str_length = 0 then 0
    else
        let current_char = test_str.[0] in
        let current_run = if Char.is_uppercase current_char then 1 else 0 in
        let subsequent_runs = max_run_uppercase (String.sub test_str 1 (test_str_length - 1)) in
        if subsequent_runs > current_run then subsequent_runs
        else current_run

let max_run_uppercase = max_run_uppercase "ABCDBECEEEEDDBD"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:30: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let test_str_length = String.length test_str in
  if test_str_length = 0 then 0
  else
    let current_char = test_str.[0] in
    let current_run = if Char.is_uppercase current_char then 1 else 0 in
    let subsequent_runs = max_run_uppercase (String.sub test_str 1 (test_str_length - 1)) in
    if subsequent_runs > current_run then subsequent_runs
    else current_run

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:26: Unbound value "Char.is_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let test_str_length = String.length test_str in
  if test_str_length = 0 then 0
  else
    let current_char = test_str.[0] in
    let current_run = if Stdlib.Char.(current_char >= 'A' && current_char <= 'Z') then 1 else 0 in
    let subsequent_runs = max_run_uppercase (String.sub test_str 1 (test_str_length - 1)) in
    if subsequent_runs > current_run then subsequent_runs
    else current_run

