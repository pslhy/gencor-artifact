let rec prime_length (string : string) : bool =
    let len = String.length string in
    if len = 1 || len = 0 then
        false
    else
        is_prime len

and is_prime (n : int) : bool =
    let rec is_prime_helper (i : int) : bool =
        if i = 1 then
            true
        else if n mod i = 0 then
            false
        else
            is_prime_helper (i - 1)
    in
    is_prime_helper (n - 1)


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
