let rec is_multiply_prime (a : int) : bool =
    let rec find_prime (n : int) : int list =
        if n = 1 then []
        else if is_prime (n) then n :: find_prime (n / 2)
        else find_prime (n / 2)
    and is_prime (n : int) : bool =
        if n = 1 then false
        else if n = 2 then true
        else if n mod 2 = 0 then false
        else is_prime (n / 2)
    in
    let (a1, a2, a3) = find_prime (a / 2) in
    a = a1 * a2 * a3


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
