let rec prime_length (string : string) : bool =
  if String.length string <= 1 then
    false
  else if String.length string = 2 then
    true
  else
    let rec check_prime (n : int) : bool =
      n > 1 && (n < 2 || n mod 2 <> 0)
    in
    check_prime (String.length string)


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
