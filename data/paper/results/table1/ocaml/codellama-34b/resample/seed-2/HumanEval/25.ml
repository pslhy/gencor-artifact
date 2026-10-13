(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return list of prime factors of given integer in the order from smallest to largest. *)
(*     Each of the factors should be listed number of times corresponding to how many times it appeares in factorization. *)
(*     Input number should be equal to the product of all factors *)
(*     >>> factorize 8 *)
(*     [2; 2; 2] *)
(*     >>> factorize 25 *)
(*     [5; 5] *)
(*     >>> factorize 70 *)
(*     [2; 5; 7] *)
let rec factorize (n : int) : int list =
    let rec aux (n : int) (factors : int list) : int list =
        if n = 1 then
            factors
        else
            let prime_factors = get_prime_factors n in
            let prime, power = List.hd prime_factors in
            let n' = n / prime in
            let factors' = if power = 1 then prime :: factors else factors in
            aux n' factors'
    in
    aux n []

let get_prime_factors (n : int) : (int * int) list =
    let rec aux (n : int) (prime : int) (power : int) : (int * int) list =
        if n = 1 then
            [(prime, power)]
        else if n mod prime = 0 then
            let n' = n / prime in
            let power' = power + 1 in
            (prime, power) :: aux n' prime power'
        else
            []
    in
    aux n 2 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Unbound value "get_prime_factors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    let rec aux (n : int) (factors : int list) : int list =
        if n = 1 then
            factors
        else
            let prime, power = List.hd (get_prime_factors n) in
            let n' = n / prime in
            let factors' = if power = 1 then prime :: factors else factors in
            aux n' factors'
    in
    aux n []

let get_prime_factors (n : int) : (int * int) list =
    let rec aux (n : int) (prime : int) (power : int) : (int * int) list =
        if n = 1 then
            [(prime, power)]
        else if n mod prime = 0 then
            let n' = n / prime in
            let power' = power + 1 in
            (prime, power) :: aux n' prime power'
        else
            []
    in
    aux n 2 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:41: Unbound value "get_prime_factors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    let rec aux (n : int) (factors : int list) : int list =
        if n = 1 then
            factors
        else
            let prime, power = List.hd (get_prime_factors n) in
            let n' = n / prime in
            let factors' = if power = 1 then prime :: factors else factors in
            aux n' factors'
    in
    aux n []

let get_prime_factors (n : int) : (int * int) list =
    let rec aux (n : int) (prime : int) (power : int) : (int * int) list =
        if n = 1 then
            [(prime, power)]
        else if n mod prime = 0 then
            let n' = n / prime in
            let power' = power + 1 in
            (prime, power) :: aux n' prime power'
        else
            []
    in
    aux n 2 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:41: Unbound value "get_prime_factors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    let rec get_prime_factors (n : int) : (int * int) list =
        if n = 1 then
            []
        else
            let prime, power = List.hd (get_prime_factors n) in
            let n' = n / prime in
            let factors' = if power = 1 then [prime] else [] in
            (prime, power) :: get_prime_factors n'
    in
    get_prime_factors n

