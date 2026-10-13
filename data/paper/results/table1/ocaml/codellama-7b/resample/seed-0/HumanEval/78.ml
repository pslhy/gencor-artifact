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
  match num with
  | "" -> 0
  | h :: t ->
    let digit =
      match h with
      | '0'..'9' | 'A'..'F' ->
        Some (Int.of_string ("0x" ^ String.make 1 h))
      | _ -> None
    in
    match digit with
    | Some d ->
      if d = 2 | d = 3 | d = 5 | d = 11 | d = 13 then
        1 + hex_key t
      else
        0 + hex_key t
    | None -> 0 + hex_key t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  match num with
  | "" -> 0
  | h :: t ->
    let digit =
      match h with
      | '0'..'9' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | 'A'..'F' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | _ -> None
    in
    match digit with
    | Some d ->
      if d = 2 | d = 3 | d = 5 | d = 11 | d = 13 then
        1 + hex_key t
      else
        0 + hex_key t
    | None -> 0 + hex_key t

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  match num with
  | "" -> 0
  | h :: t ->
    let digit =
      match h with
      | '0'..'9' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | 'A'..'F' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | _ -> None
    in
    match digit with
    | Some d ->
      if d = 2 | d = 3 | d = 5 | d = 11 | d = 13 then
        1 + hex_key t
      else
        0 + hex_key t
    | None -> 0 + hex_key t

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  match num with
  | "" -> 0
  | h :: t ->
    let digit =
      match h with
      | '0'..'9' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | 'A'..'F' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | _ -> None
    in
    match digit with
    | Some d ->
      if d = 2 | d = 3 | d = 5 | d = 11 | d = 13 then
        1 + hex_key t
      else
        0 + hex_key t
    | None -> 0 + hex_key t

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:16: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec hex_key (num : string) : int =
  match num with
  | "" -> 0
  | h :: t ->
    let digit =
      match h with
      | '0'..'9' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | 'A'..'F' -> Int.of_string (string_of_int (Int.of_string h) + 1)
      | _ -> None
    in
    match digit with
    | Some d ->
      if d = 2 || d = 3 || d = 5 || d = 11 || d = 13 then
        1 + hex_key t
      else
        0 + hex_key t
    | None -> 0 + hex_key t

