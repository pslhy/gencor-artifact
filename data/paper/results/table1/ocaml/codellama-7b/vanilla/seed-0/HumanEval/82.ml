let rec prime_length (string : string) : bool =
  let length = String.length string in
  if length = 0 then
    false
  else
    let rec check_prime (i : int) : bool =
      if i = 1 then
        true
      else if length mod i = 0 then
        false
      else
        check_prime (i - 1)
    in
    check_prime (length - 1)


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
