let rec prime_length (string : string) : bool =
  let len = String.length string in
  match len with
  | 0 | 1 -> false
  | n -> is_prime n

and is_prime (n : int) : bool =
  let rec loop (n : int) : bool =
    match n with
    | 1 -> true
    | n -> n mod 2 <> 0 && loop (n / 2)
  in
  loop (n - 1)


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
