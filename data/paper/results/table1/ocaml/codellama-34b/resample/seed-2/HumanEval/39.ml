(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     prime_fib returns n-th number that is a Fibonacci number and it's also prime. *)
(*     >>> prime_fib 1 *)
(*     2 *)
(*     >>> prime_fib 2 *)
(*     3 *)
(*     >>> prime_fib 3 *)
(*     5 *)
(*     >>> prime_fib 4 *)
(*     13 *)
(*     >>> prime_fib 5 *)
(*     89 *)
let rec prime_fib (n : int) : int =
    let fib n =
        match n with
        | 0 | 1 -> n
        | _ -> fib (n - 1) + fib (n - 2)
    in
    let is_prime n =
        let rec loop i =
            i > n / 2 || n % i <> 0 && loop (i + 1)
        in
        loop 2
    in
    let rec aux i =
        if is_prime (fib i) then
            fib i
        else
            aux (i + 1)
    in
    aux 1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "fib" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
    let fib n =
        match n with
        | 0 | 1 -> n
        | _ -> fib (n - 1) + fib (n - 2)
    in
    let is_prime n =
        let rec loop i =
            i > n / 2 || n % i <> 0 && loop (i + 1)
        in
        loop 2
    in
    let rec aux i =
        if is_prime (fib i) then
            fib i
        else
            aux (i + 1)
    in
    aux 1

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:16: Unbound value "fib" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
    let rec fib n =
        match n with
        | 0 | 1 -> n
        | _ -> fib (n - 1) + fib (n - 2)
    in
    let is_prime n =
        let rec loop i =
            i > n / 2 || n % i <> 0 && loop (i + 1)
        in
        loop 2
    in
    let rec aux i =
        if is_prime (fib i) then
            fib i
        else
            aux (i + 1)
    in
    aux 1

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:28: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
    let rec fib n =
        match n with
        | 0 | 1 -> n
        | _ -> fib (n - 1) + fib (n - 2)
    in
    let is_prime n =
        let rec loop i =
            i > n / 2 || n % i <> 0 && loop (i + 1)
        in
        loop 2
    in
    let rec aux i =
        if is_prime (fib i) then
            fib i
        else
            aux (i + 1)
    in
    aux 1

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:28: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec prime_fib (n : int) : int =
    let rec fib n =
        match n with
        | 0 | 1 -> n
        | _ -> fib (n-1) + fib (n-2)
    in
    let is_prime n =
        let rec loop i =
            i > n / 2 || n mod i <> 0 && loop (i + 1)
        in
        loop 2
    in
    let rec aux i =
        if is_prime (fib i) then
            fib i
        else
            aux (i + 1)
    in
    aux 1

