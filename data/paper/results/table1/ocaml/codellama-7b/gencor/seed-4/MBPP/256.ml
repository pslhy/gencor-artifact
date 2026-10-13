
let rec count_Primes_nums (n : int) : int = 
    (* base case: 0 and 1 are neither prime nor composite numbers *)
    if n < 2 then 0
    (* if n is odd, it is either prime or composite *)
    else if n mod 2 = 0 then 
        (* if n is even, it is either prime or composite *)
        if n = 2 then 1
        else if n mod 3 = 0 then 
            (* if n is divisible by 3, it is not prime *)
            0
        else if n mod 5 = 0 then 
            (* if n is divisible by 5, it is not prime *)
            0
        else count_Primes_nums (n-1) + 1
    else count_Primes_nums (n-1) + 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
