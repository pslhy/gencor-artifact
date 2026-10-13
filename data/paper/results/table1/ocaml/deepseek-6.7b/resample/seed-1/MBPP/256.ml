(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> n
    | _ -> count_Primes_nums (n-1) + is_prime_num n

and is_prime_num (n : int) : int =
    match (n, n_div_range 2 (int_of_float (sqrt (float_of_int n)))) with
    | (_, 1) -> 1
    | _ -> 0

and n_div_range (i : int) (j : int) : int =
    match i > j with 
    | true -> 1
    | false -> (n_mod (n i j) 0) + n_div_range (i+1) j

and n_mod (n : int) (m : int) : int =
    match n < m with
    | true -> n
    | false -> n_mod (n-m) m;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:24: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> n
    | _ -> count_Primes_nums (n-1) + is_prime_num (n-1)

and is_prime_num (n : int) : int =
    match (n, n_div_range 2 (int_of_float (sqrt (float_of_int n)))) with
    | (_, 1) -> 1
    | _ -> 0

and n_div_range (i : int) (j : int) : int =
    match i > j with 
    | true -> 1
    | false -> (n_mod n i) + n_div_range (i+1) j

and n_mod (n : int) (m : int) : int =
    match n < m with
    | true -> n
    | false -> n_mod (n-m) m;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:23: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ -> count_Primes_nums (n-1) + is_prime_num (n-1)

and is_prime_num (n : int) : int =
    match (n, n_div_range 2 (int_of_float (sqrt (float_of_int n)))) with
    | (_, 1) -> 0
    | _ -> 1

and n_div_range (i : int) (j : int) : int =
    match i > j with 
    | true -> 1
    | false -> (n_mod n i) + n_div_range (i+1) j

and n_mod (n : int) (m : int) : int =
    match n < m with
    | true -> n
    | false -> n_mod (n-m) m;;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:23: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ -> count_Primes_nums (n-1) + is_prime_num (n-1)

and is_prime_num (n : int) : int =
    match (n, n_div_range 2 (int_of_float (sqrt (float_of_int n)))) with
    | (_, 1) -> 0
    | _ -> 1

and n_div_range (i : int) (j : int) : int =
    match i > j with 
    | true -> 1
    | false -> (n_mod n i) + n_div_range (i+1) j

and n_mod (n : int) (m : int) : int =
    match n < m with
    | true -> n
    | false -> n_mod (n-m) m;;

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:23: Unbound value "n" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_Primes_nums (n : int) : int =
    match n with
    | 0 | 1 -> 0
    | _ -> count_Primes_nums (n - 1) + is_prime_num n

and is_prime_num (n : int) : int =
    match (n, n_div_range 2 (int_of_float (sqrt (float_of_int n)))) with
    | (_, 1) -> 0
    | _ -> 1

and n_div_range (i : int) (j : int) : int =
    match i > j with 
    | true -> 0
    | false -> (n_mod n i) + n_div_range (i+1) j

and n_mod (n : int) (m : int) : int =
    match n < m with
    | true -> n
    | false -> n_mod (n-m) m;;

