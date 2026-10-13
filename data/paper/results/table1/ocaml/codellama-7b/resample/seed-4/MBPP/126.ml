(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of common divisors of two given numbers. *)
let rec sum (a : int) (b : int) : int = 
    (* base case: a or b equals 0 *) 
    if a = 0 || b = 0 then 0
    (* recursive case: find common divisors of a and b *) 
    else let c = a mod b in 
        if c = 0 
        then b + sum (a / b) (b) 
        else sum (a) (b - 1) 
        (* Divide a by b and truncate, the result is an integer, either 0 or 1 *)
        (* If the result is 0, the current remainder is a common divisor *)
        (* b is the sum of the common divisors of a and b *)
end

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sum (a : int) (b : int) : int =
    if a = 0 then
        b
    else
        sum (a - 1) (b + 1)

