let rec hex_key (num : string) : int = 
  let is_prime (n : int) : bool = 
    if n <= 1 then false
    else
      let rec check_divisor (i : int) : bool = 
        if i * i > n then true
        else if n mod i = 0 then false
        else check_divisor (i + 1)
      in check_divisor 2
  and hex_digit_to_int (d : char) : int =
    match d with
    | '0' -> 0
    | '1' -> 1
    | '2' -> 2
    | '3' -> 3
    | '4' -> 4
    | '5' -> 5
    | '6' -> 6
    | '7' -> 7
    | '8' -> 8
    | '9' -> 9
    | 'A' -> 10
    | 'B' -> 11
    | 'C' -> 12
    | 'D' -> 13
    | 'E' -> 14
    | 'F' -> 15
    | _ -> invalid_arg "Invalid hex digit"
  in
  let rec count_primes (s : string) (count : int) : int = 
    match s with
    | "" -> count
    | _ -> 
        let d = s.[0] in
        let d_val = hex_digit_to_int d in
        if is_prime d_val then count_primes (String.sub s 1 (String.length s - 1)) (count + 1)
        else count_primes (String.sub s 1 (String.length s - 1)) count
  in count_primes num 0


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
