let rec hex_key (num : string) : int =
    if num = "" then 0 else
    let digit = int_of_string (String.make 1 num.[0]) in
    let is_prime =
        match digit with
        | 2 | 3 | 5 | 7 | 11 | 13 | 17 | 19 | 23 | 29 | 31
        | 37 | 41 | 43 | 47 | 53 | 59 | 61 | 67 | 71 | 73
        | 79 | 83 | 89 | 97 | 101 | 103 | 107 | 109 | 113
        | 127 | 131 | 137 | 139 | 149 | 151 | 157 | 163
        | 167 | 173 | 179 | 181 | 191 | 193 | 197 | 199
        | 211 | 223 | 227 | 229 | 233 | 239 | 241 | 251
        => true
        | _ => false
    in
    if is_prime then 1 + hex_key (String.sub num 1 ((String.length num) - 1)) else hex_key (String.sub num 1 ((String.length num) - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
