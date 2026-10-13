(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int = 
    (* base case: 0 and 1 are neither prime nor composite numbers *)
    if n < 2 then 0
    (* if n is odd, it is either prime or composite *)
    else if n mod 2 = 0 then 
        (* if n is even, it is either prime or composite *)
        if n = 2 then 1
        else if memprime (n / 2) (n / 2 - 1) then count_Primes_nums (n - 2) + 1
        else count_Primes_nums (n - 2)
    else if n % 2 = 0 then 
        (* if n is even, it is composite *)
        if memprime (n / 2) (n / 2 - 1) then count_Primes_nums (n - 2)
        else count_Primes_nums (n - 2) + 1
    else count_Primes_nums (n - 2)

(* checks whether the number num is prime
   by testing it against all numbers from 2 to num - 1 *)
let rec memprime (num : int) (n : int) : bool =
    (* base case: when n <= 1 or (n is odd and n is not equal to num)*)
    if n <= 1 || (n mod 2 <> 0 && n <> num) then true
    (* recursive case: check whether the number is prime
       by calling the function with num as the argument and
       with (num * num - 1) as the argument *)
    else if memprime num (num * num - 1) then false
    else memprime num (n * n - 1)

(* returns the number of prime numbers less than n
   by calling the count_Primes_nums function with n as the argument *)
let number_of_Primes_less_than (n : int) : int = 
    count_Primes_nums n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:17: Unbound value "memprime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    (* base case: 0 and 1 are neither prime nor composite numbers *)
    if n < 2 then 0
    (* if n is odd, it is either prime or composite *)
    else if n mod 2 = 0 then 
        (* if n is even, it is either prime or composite *)
        if n = 2 then 1
        else if memprime (n / 2) (n / 2 - 1) then count_Primes_nums (n - 2) + 1
        else count_Primes_nums (n - 2)
    else if n % 2 = 0 then 
        (* if n is even, it is composite *)
        if memprime (n / 2) (n / 2 - 1) then count_Primes_nums (n - 2)
        else count_Primes_nums (n - 2) + 1
    else count_Primes_nums (n - 2)

(* checks whether the number num is prime
   by testing it against all numbers from 2 to num - 1 *)
and memprime (num : int) (n : int) : bool =
    (* base case: when n <= 1 or (n is odd and n is not equal to num)*)
    if n <= 1 || (n mod 2 <> 0 && n <> num) then true
    (* recursive case: check whether the number is prime
       by calling the function with num as the argument and
       with (num * num - 1) as the argument *)
    else if memprime num (num * num - 1) then false
    else memprime num (n * n - 1)

(* returns the number of prime numbers less than n
   by calling the count_Primes_nums function with n as the argument *)
let rec number_of_Primes_less_than (n : int) : int =
    count_Primes_nums n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:15: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
        | 0 -> 0
        | 1 -> 0
        | 2 -> 1
        | _ ->
            count_Primes_nums (n / 2) +
            count_Primes_nums (n / 3) -
            count_Primes_nums (n / 6)

(* checks whether the number num is prime
   by testing it against all numbers from 2 to num - 1 *)
let rec memprime (num : int) (n : int) : bool =
    match n with
        | 2 | 3 -> true
        | n when n mod 2 = 0 || n mod 3 = 0 -> false
        | _ ->
            memprime num (n / 2) || memprime num (n / 3)

(* returns the number of prime numbers less than n
   by calling the count_Primes_nums function with n as the argument *)
let rec number_of_Primes_less_than (n : int) : int =
    count_Primes_nums n

