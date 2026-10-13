(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec helper (str : string) (count : int) (max : int) : int =
    match str with
    | "" -> max
    | _ ->
      if Char.Ascii.is_uppercase (String.get str 0) then
        helper (String.sub str 1 (String.length str - 1)) (count + 1) (max_count count max)
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max_count count max)
  and max_count (a : int) (b : int) : int =
    if a > b then a
    else b
  in
  helper test_str 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound module "Char.Ascii" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec helper (str : string) (count : int) (max : int) : int =
    match str with
    | "" -> max
    | _ ->
      if String.contains_uppercase (String.make 1 (String.get str 0)) then
        helper (String.sub str 1 (String.length str - 1)) (count + 1) (max_count count max)
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max_count count max)
  and max_count (a : int) (b : int) : int =
    if a > b then a
    else b
  in
  helper test_str 0 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound value "String.contains_uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec helper (str : string) (count : int) (max : int) : int =
    match str with
    | "" -> max
    | _ ->
      if Char.Ascii.is_uppercase (String.get str 0) then
        helper (String.sub str 1 (String.length str - 1)) (count + 1) (max_count count max)
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max_count count max)
  and max_count (a : int) (b : int) : int =
    if a > b then a
    else b
  in
  helper test_str 0 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:10: Unbound module "Char.Ascii" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_run_uppercase (test_str : string) : int =
  let rec helper (str : string) (count : int) (max : int) : int =
    match str with
    | "" -> max
    | _ ->
      if Char.uppercase_ascii (String.get str 0) <> String.get str 0 then
        helper (String.sub str 1 (String.length str - 1)) (count + 1) (max_count count max)
      else
        helper (String.sub str 1 (String.length str - 1)) 0 (max_count count max)
  and max_count (a : int) (b : int) : int =
    if a > b then a
    else b
  in
  helper test_str 0 0

