let rec hex_key (num : string) : int =
  if num = "" then 0
  else
    let digit = (Char.code num.[0] - Char.code '0') in
    if digit >= 2 && digit <= 6 then 1
    else if Char.equal num.[0] 'A' && digit == 1 then 1
    else 0 + hex_key (String.sub num 1 (String.length num - 1))

let () =
  let tests = [
    ("AB", 1);
    ("1077E", 2);
    ("ABED1A33", 4);
    ("123456789ABCDEF0", 6);
    ("2020", 2);
  ]
  let run_test ((num, expected) : string * int) : unit =
    Printf.printf "hex_key (\"%s\") = %d\n" num (hex_key num)
  in
  List.iter run_test tests


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
