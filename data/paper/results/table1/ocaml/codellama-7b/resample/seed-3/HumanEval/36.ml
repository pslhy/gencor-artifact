(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
let rec fizz_buzz (n : int) : int =
  if n = 0 then
    0
  else if n mod 11 = 0 || n mod 13 = 0 then
    if n >= 10 then
      let count7 = fizz_buzz (n - 10) in
      if n mod 11 = 0 then
        count7 + String.count (string_of_int n) '7'
      else
        count7 + String.count (string_of_int (n mod 13)) '7'
    else
      0
  else
    fizz_buzz (n - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:18: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
  if n = 0 then
    0
  else if n mod 11 = 0 || n mod 13 = 0 then
    let count7 = String.count (string_of_int n) '7' in
    if n mod 11 = 0 then
      count7 + String.length (string_of_int n)
    else
      count7 + String.length (string_of_int (n mod 13))
  else
    fizz_buzz (n - 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:18: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
  if n = 0 then
    0
  else if n mod 11 = 0 || n mod 13 = 0 then
    let count_7 = String.count (string_of_int n) '7' in
    if n mod 11 = 0 then
      count_7 + String.length (string_of_int n)
    else
      count_7 + String.length (string_of_int (n mod 13))
  else
    fizz_buzz (n - 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "String.count" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
  if n = 0 then
    0
  else if n mod 11 = 0 || n mod 13 = 0 then
    let count_7 = String.length (string_of_int n) in
    if n mod 11 = 0 then
      count_7 + String.length (string_of_int n)
    else
      count_7 + String.length (string_of_int (n mod 13))
  else
    fizz_buzz (n - 1)

