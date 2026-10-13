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
    let rec helpFactorize (n : int) (factors : int list) : int list =
        match n with
        | 1 -> factors
        | _ -> 
            let (newN, newFactors) = divideFactor(n)
            helpFactorize newN (newFactors :: factors)
    in helpFactorize n []

let rec divideFactor(n:int) = 
    if n mod 2 = 0 Then
      (n / 2, 2)
    else if n mod 3 = 0 Then
      (n / 3, 3)
    else if n mod 5 = 0 Then
      (n / 5, 5)
    else
      (n, 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    if n <= 1 then [] else
    let (newN, newFactors) = divideFactor(n) in
    newFactors :: factorize(newN)

let rec divideFactor (n:int) =
    if n mod 2 = 0 then (n / 2, 2)
    else if n mod 3 = 0 then (n / 3, 3)
    else if n mod 5 = 0 then (n / 5, 5)
    else (n, 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound value "divideFactor" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    if n <= 1 then [] else
    let (newN, newFactors) = divideFactors(n) in
    newFactors :: factorize(newN)

let rec divideFactors (n:int) =
    if n mod 2 = 0 then (n / 2, 2)
    else if n mod 3 = 0 then (n / 3, 3)
    else if n mod 5 = 0 then (n / 5, 5)
    else (n, 1)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound value "divideFactors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    if n <= 1 then [] else
    let (newN, newFactors) = divideFactors(n) in
    newFactors :: factorize(newN)

let rec divideFactors (n:int) =
    if n mod 2 = 0 then (n / 2, 2)
    else if n mod 3 = 0 then (n / 3, 3)
    else if n mod 5 = 0 then (n / 5, 5)
    else (n, 1)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:30: Unbound value "divideFactors" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec factorize (n : int) : int list =
    if n <= 1 then [] else
    let (newN, newFactors) = divideFactors n in
    newFactors :: factorize newN

let rec divideFactors (n:int) =
    if n mod 2 = 0 then (n / 2, 2)
    else if n mod 3 = 0 then (n / 3, 3)
    else if n mod 5 = 0 then (n / 5, 5)
    else (n, 1)

