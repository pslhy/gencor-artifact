let rec prime_length (string : string) : bool =
    let string_length = String.length string in
    if string_length = 0 then false
    else if string_length = 1 then false
    else if string_length = 2 then true
    else if is_prime string_length then true
    else false

and is_prime (n : int) : bool =
    let rec loop (i : int) : bool =
        if i < n then loop (i + 1)
        else if i = n then true
        else false
    in loop 2
;;


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
