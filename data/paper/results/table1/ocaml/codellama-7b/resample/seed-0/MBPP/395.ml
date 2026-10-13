(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if str1.[0] <> str1.[1] then
    Some str1.[0]
  else
    first_non_repeating_character (str1.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:45: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
    if str1.[0] <> str1.[1] then
        Some str1.[0]
    else
        first_non_repeating_character (str1.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:49: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if str1.[0] <> str1.[1] then
    Some str1.[0]
  else
    first_non_repeating_character (str1.[1..])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:45: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if str1.[0] <> str1.[1] then
    Some str1.[0]
  else
    first_non_repeating_character (str1.[1..])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:45: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 = 1 then
    Some str1
  else
    if List.mem str1.[1] str1.[2..] then
      first_non_repeating_character (str1.[1..])
    else
      Some str1

