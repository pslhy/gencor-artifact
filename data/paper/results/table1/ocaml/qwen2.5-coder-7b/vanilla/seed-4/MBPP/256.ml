let rec count_Primes_nums (n : int) : int = 
    let rec is_prime (num : int) : bool =
        if num <= 1 then false
        else if num = 2 then true
        else
            let rec check_divisors (div : int) : bool =
                if div * div > num then true
                else if num mod div = 0 then false
                else check_divisors (div + 1)
            in check_divisors 2
    in
    let rec count (i : int) (count : int) : int =
        if i >= n then count
        else if is_prime i then count (count + 1)
        else count count
    in count 2 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
