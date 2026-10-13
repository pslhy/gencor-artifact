(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the largest prime factor of n. Assume n > 1 and is not a prime. *)
(*     >>> largest_prime_factor 13195 *)
(*     29 *)
(*     >>> largest_prime_factor 2048 *)
(*     2 *)
let rec largest_prime_factor (n : int) : int = 
    let is_prime (x : int) : bool = 
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. x-1]
    in 
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n))] 
        |> List.reduce max 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:54: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
    let is_prime (x : int) : bool =
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. x-1]
    in
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n))]

(* The previous code had some syntax errors. Here is the corrected code: *)

let rec largest_prime_factor (n : int) : int =
    let is_prime (x : int) : bool =
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. (x-1)]
    in
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n)) ]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:54: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
    let is_prime (x : int) : bool =
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. (x-1)]
    in
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n)) ]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:54: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
    let is_prime (x : int) : bool =
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. (x-1)]
    in
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n))]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:54: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec largest_prime_factor (n : int) : int =
    let is_prime (x : int) : bool =
        if x <= 1 then false
        else if x = 2 then true
        else List.for_all (fun i -> x mod i <> 0) [2 .. x-1]
    in
    if is_prime n then n
    else List.map (fun x -> (x, largest_prime_factor (n/x))) [2 .. int_of_float (sqrt (float_of_int n))];;

