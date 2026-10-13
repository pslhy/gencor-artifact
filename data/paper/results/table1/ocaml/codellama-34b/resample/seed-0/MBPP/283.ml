(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
let rec validate (n : int) : bool =
    if n < 1 then true
    else if n % 10 > 0 then false
    else validate (n / 10)

let check n = validate n && n > 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:15: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec validate (n : int) : bool =
    if n < 1 then true
    else if n mod 10 > 0 then false
    else validate (n / 10)

let check n = validate n && n > 0

