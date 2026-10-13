let rec count_Primes_nums (n : int) : int =
    if n < 2 then 0
    else if is_prime n then 1 + count_Primes_nums (n-1)
    else count_Primes_nums (n-1)

and is_prime (num : int) : bool =
    let rec check_divider (div : int) : bool =
        if div = 1 then true
        else if num mod div = 0 then false
        else check_divider (div-1) in
    check_divider (num-1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
