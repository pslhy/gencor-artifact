(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to identify non-prime numbers. *)
let rec is_not_prime (n : int) : bool = 
    (* base case: 1 and 0 are neither prime nor composite numbers *)
    if n < 2 then false 
    (* test for divisibility by all numbers between 2 and the square root of n *)
    else if List.mem n @@ List.map (fun x -> x * x) @@ List.range 2 @@ int_of_float @@ floor @@ sqrt n then true 
    else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:56: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_not_prime (n : int) : bool =
    (* base case: 1 and 0 are neither prime nor composite numbers *)
    if n <= 1 then false
    (* test for divisibility by all numbers between 2 and the square root of n *)
    else if List.mem n @@ List.map (fun x -> x * x) @@ List.range 2 @@ int_of_float @@ floor (sqrt (float_of_int n)) then true
    else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:56: Unbound value "List.range" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_not_prime (n : int) : bool =
    (* base case: 1 and 0 are neither prime nor composite numbers *)
    if n <= 1 then false
    (* test for divisibility by all numbers between 2 and the square root of n *)
    else if List.exists (fun x -> n mod x = 0) @@ List.init (int_of_float @@ floor @@ sqrt (float_of_int n)) (fun x -> x + 1) then true
    else false

