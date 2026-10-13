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
  let is_prime n =
    if n <= 1 then false
    else
      let rec check_divisor i =
        if i * i > n then true
        else if n mod i = 0 then false
        else check_divisor (i + 1)
      in check_divisor 2
  in
  let count_primes s acc =
    match s with
    | [] -> acc
    | '2' :: rest -> count_primes rest (acc + 1)
    | '3' :: rest -> count_primes rest (acc + 1)
    | '5' :: rest -> count_primes rest (acc + 1)
    | '7' :: rest -> count_primes rest (acc + 1)
    | 'B' :: rest -> count_primes rest (acc + 1)
    | 'D' :: rest -> count_primes rest (acc + 1)
    | _ :: rest -> count_primes rest acc
  in
  count_primes (List.of_seq (String.to_seq num)) 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:22: Unbound value "count_primes" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 11 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int = 
  let is_prime n =
    if n <= 1 then false
    else
      let rec check_divisor i =
        if i * i > n then true
        else if n mod i = 0 then false
        else check_divisor (i + 1)
      in check_divisor 2
  in
  let rec count_primes s acc =
    match s with
    | [] -> acc
    | '2' :: rest -> count_primes rest (acc + 1)
    | '3' :: rest -> count_primes rest (acc + 1)
    | '5' :: rest -> count_primes rest (acc + 1)
    | '7' :: rest -> count_primes rest (acc + 1)
    | 'B' :: rest -> count_primes rest (acc + 1)
    | 'D' :: rest -> count_primes rest (acc + 1)
    | _ :: rest -> count_primes rest acc
  in
  count_primes (List.of_seq (String.to_seq num)) 0

