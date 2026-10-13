(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that returns true if the given number is the multiplication of 3 prime numbers *)
(*     and false otherwise. *)
(*     Knowing that (a) is less then 100. *)
(*     Example: *)
(*     >>> is_multiply_prime 30 *)
(*     true *)
(*     30 = 2 * 3 * 5 *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 0 then false
    else if a = 1 then true
    else if a < 100 then is_prime a
    else is_multiply_prime a / 2 && is_prime a % 2 = 0 && is_prime a / 3 = 0 && is_prime a % 3 = 0 && is_prime a / 5 = 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 0 then false
    else if a = 1 then true
    else if a < 100 then is_prime a
    else is_multiply_prime (a / 2) && is_prime (a % 2) = 0 && is_multiply_prime (a / 3) = 0 && is_prime (a % 3) = 0 && is_multiply_prime (a / 5) = 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 0 then false
    else if a = 1 then true
    else if a < 100 then is_prime a
    else is_multiply_prime (a / 2) && is_multiply_prime (a % 2) = 0 && is_prime (a / 3) = 0 && is_prime (a % 3) = 0 && is_prime (a / 5) = 0

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:26: Unbound value "is_prime" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_multiply_prime (a : int) : bool =
    if a < 0 then false
    else if a = 1 then true
    else if a < 100 then is_prime a
    else is_multiply_prime (a / 2) && is_multiply_prime (a % 2) = 0 && is_prime (a / 3) = 0 && is_prime (a % 3) = 0 && is_prime (a / 5) = 0

let is_prime (a : int) : bool =
    is_multiply_prime a

