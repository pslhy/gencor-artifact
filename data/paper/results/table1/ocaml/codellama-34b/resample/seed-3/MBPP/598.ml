(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (number |> to_string |> String.length) in
    let digit = number % 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:33: Unbound value "to_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (number |> string_of_int |> String.length) in
    let digit = number % 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:24: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = string_length (string_of_int number) in
    let digit = number mod 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "string_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (string_of_int number) |> string_length in
    let digit = number mod 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:48: Unbound value "string_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec armstrong_number (number : int) : bool =
  if number < 10 then
    true
  else
    let num_digits = (string_of_int number) |> String.length in
    let digit = number mod 10 in
    let rest_of_number = number / 10 in
    (digit ** num_digits) mod num_digits = number && armstrong_number rest_of_number

