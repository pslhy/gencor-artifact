
let rec simplify (x : string) (n : string) : bool = 
    let (num1, num2) = List.map string_of_int x in
    let (denom1, denom2) = List.map string_of_int n in
    let gcd = Gc.get_minor_free x num1 denom2 in
    let numer = num1 * denom2 in
    let denom = denom1 * denom2 in
    let reduced_numer = numer / gcd in
    let reduced_denom = denom / gcd in
    if reduced_numer = reduced_denom then
        true
    else
        false

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
