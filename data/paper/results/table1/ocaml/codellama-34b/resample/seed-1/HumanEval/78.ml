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
        n >= 2 && (n = 2 || n = 3 || n = 5 || n = 7 || n = 11 || n = 13)
    in
    match num with
    | "" -> 0
    | '0' .. '9' as c -> 1
    | 'A' .. 'F' as c -> if is_prime (int_of_char c - int_of_char 'A' + 10) then 1 else 0
    | _ -> 0
    
let rec hex_key (num : string) : int =
    let is_prime n =
        n >= 2 && (n = 2 || n = 3 || n = 5 || n = 7 || n = 11 || n = 13)
    in
    num
    |> String.trim
    |> String.filter (fun c -> c >= 'A' && c <= 'F')
    |> String.fold_left (fun acc _ -> acc + if is_prime (int_of_char c - int_of_char 'A' + 10) then 1 else 0) 0

