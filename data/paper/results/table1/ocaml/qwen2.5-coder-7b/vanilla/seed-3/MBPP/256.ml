let rec count_Primes_nums (n : int) : int = 
    let rec is_prime (num : int) : bool = 
        let rec check_divisors (i : int) : bool = 
            if i * i > num then true 
            else if num mod i = 0 then false 
            else check_divisors (i + 1) 
        in 
        check_divisors 2 
    in 
    let rec count (i : int) (count : int) : int = 
        if i >= n then count 
        else if is_prime i then count (count + 1) 
        else count count 
    in 
    if n <= 2 then 0 
    else count 2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
