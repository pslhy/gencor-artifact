(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You have been tasked to write a function that receives *)
(*     a hexadecimal number as a string and counts the number of hexadecimal *)
(*     digits that are primes (prime number, or a prime, is a natural number *)
(*     greater than 1 that is not a product of two smaller natural numbers). *)
(*     Hexadecimal digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F. *)
(*     Prime numbers are 2, 3, 5, 7, 11, 13, 17,... *)
(*     So you have to determine a number of the following digits: 2, 3, 5, 7, *)
(*     B (=decimal 11), D (=decimal 13). *)
(*     Note: you may assume the input is always correct or empty string, *)
(*     and symbols A,B,C,D,E,F are always uppercase. *)
(*     Examples: *)
(*     >>> hex_key "AB" *)
(*     1 *)
(*     >>> hex_key "1077E" *)
(*     2 *)
(*     >>> hex_key "ABED1A33" *)
(*     4 *)
(*     >>> hex_key "123456789ABCDEF0" *)
(*     6 *)
(*     >>> hex_key "2020" *)
(*     2 *)
let rec hex_key (num : string) : int =
  if num = "" then 0 else
  let digit = int_of_string (String.make 1 (num.[0])) in
  if digit = 0 then hex_key (String.sub num 1 (String.length num - 1)) else
  if is_prime digit then 1 + hex_key (String.sub num 1 (String.length num - 1)) else
    hex_key (String.sub num 1 (String.length num - 1))

let is_prime (n : int) : bool =
  if n < 2 then false else
  let rec test_div (d : int) : bool =
    d * d > n || n mod d <> 0 && test_div (d + 1)
  in
  test_div 2

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:6: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  if num = "" then 0 else
  let digit = int_of_string (String.make 1 (num.[0])) in
  if is_prime digit then 1 + hex_key (String.sub num 1 (String.length num - 1)) else
    hex_key (String.sub num 1 (String.length num - 1))

let is_prime (n : int) : bool =
  let rec test_div (d : int) : bool =
    d * d > n || n mod d <> 0 && test_div (d + 1)
  in
  test_div 2

let main () =
  let input = read_line () in
  let result = hex_key input in
  print_int result

let _ = main ()

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:6: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  if num = "" then 0 else
  let digit = int_of_string (String.make 1 (num.[0])) in
  
  if is_prime digit then 1 + hex_key (String.sub num 1 (String.length num - 1))
  else hex_key (String.sub num 1 (String.length num - 1))

let is_prime (n : int) : bool =
  let rec test_div (d : int) : bool =
    d * d > n || n mod d <> 0 && test_div (d + 1)
  in
  test_div 2

let main () =
  let input = read_line () in
  let result = hex_key input in
  print_int result

let _ = main ()

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:6: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  if num = "" then 0 else
  let digit = int_of_string (String.make 1 (num.[0])) in
  if is_prime digit then 1 + hex_key (String.sub num 1 (String.length num - 1))
  else hex_key (String.sub num 1 (String.length num - 1))

let is_prime (n : int) : bool =
  let rec test_div (d : int) : bool =
    d * d > n || n mod d <> 0 && test_div (d + 1)
  in
  test_div 2

let main () =
  let input = read_line () in
  let result = hex_key input in
  print_int result

let _ = main ()

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:6: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  if num = "" then 0 else
  let digit = int_of_string (String.make 1 (num.[0])) in
  if is_prime digit then 1 + hex_key (String.sub num 1 (String.length num - 1))
  else hex_key (String.sub num 1 (String.length num - 1))

let is_prime (n : int) : bool =
  let rec test_div (d : int) : bool =
    d * d > n || n mod d <> 0 && test_div (d + 1)
  in
  test_div 2

let main () =
  let input = read_line () in
  let result = hex_key input in
  print_int result

let _ = main ()

