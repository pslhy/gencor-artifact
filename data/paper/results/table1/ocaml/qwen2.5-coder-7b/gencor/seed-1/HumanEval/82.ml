
let rec prime_length (string : string) : bool = 
  let len = String.length string in
  let rec is_prime n =
    if n <= 1 then false
    else if n <= 3 then true
    else if n mod 2 = 0 || n mod 3 = 0 then false
    else
      let rec check_divisor i =
        if i * i > n then true
        else if n mod i = 0 then false
        else check_divisor (i + 6)
      in
      check_divisor 5
  in
  is_prime len

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a string and returns true if the string *)
(*     length is a prime number or false otherwise *)
(*     Examples *)
(*     >>> prime_length "Hello" *)
(*     true *)
(*     >>> prime_length "abcdcba" *)
(*     true *)
(*     >>> prime_length "kittens" *)
(*     true *)
(*     >>> prime_length "orange" *)
(*     false *)
