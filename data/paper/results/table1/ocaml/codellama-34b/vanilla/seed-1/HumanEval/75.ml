let rec is_multiply_prime (a : int) : bool =
    let rec is_prime (n : int) : bool =
        if n < 2 then false
        else if n = 2 then true
        else if n = 3 then true
        else if n % 2 = 0 then false
        else if n % 3 = 0 then false
        else is_prime (n / 6) in
    if a < 0 then false
    else if a = 1 then true
    else if a < 100 then is_prime a
    else is_multiply_prime a / 2 && is_prime a % 2 = 0 && is_prime a / 3 && is_prime a % 3 = 0 && is_prime a / 5 = 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
