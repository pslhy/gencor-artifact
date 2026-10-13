
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
    | '2' :: rest -> if is_prime 2 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | '3' :: rest -> if is_prime 3 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | '5' :: rest -> if is_prime 5 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | '7' :: rest -> if is_prime 7 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | 'B' :: rest -> if is_prime 11 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | 'D' :: rest -> if is_prime 13 then hex_key (List.rev rest) (acc + 1) else hex_key (List.rev rest) acc
    | _ :: rest -> hex_key (List.rev rest) acc
  in
  let hex_list = List.of_seq (String.to_seq num) in
  count_primes (List.rev hex_list) 0

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
