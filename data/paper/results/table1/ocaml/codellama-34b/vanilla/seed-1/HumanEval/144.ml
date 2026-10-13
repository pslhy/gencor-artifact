let rec simplify (x : string) (n : string) : bool =
    let (a, b) = split_fraction x in
    let (c, d) = split_fraction n in
    if a == c then true
    else if a %% (d / gcd a d) == b / (d / gcd a d) then false
    else if a %% (c / gcd a c) == b / (c / gcd a c) then false
    else simplify x (sub_fraction n (1, d / gcd a d))

let split_fraction (fraction : string) : int * int =
    let x = fraction.indexOf('/') in
    (fraction.substring(0, x), fraction.substring(x + 1))

let sub_fraction (fraction : string) (x : int, y : int) : string =
    let (a, b) = split_fraction fraction in
    a - (x * b) + (y * b)

let gcd (a : int) (b : int) : int =
    if a = 0 then b
    else gcd (b mod a) a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)
