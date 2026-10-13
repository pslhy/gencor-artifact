(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of divisors of a given integer. *)
let rec divisor (n : int) : int = 
    let rec help x acc =
        if x = 1 then acc else
        if n mod x = 0 then help (x - 1) (acc + 1) else
        help (x - 1) acc
    help n 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisor (n : int) : int =
    let rec help x acc =
        if x = 1 then acc
        else if n mod x = 0 then help (x - 1) (acc + 1)
        else help (x - 1) acc
    help n 0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisor (n : int) : int =
    let rec help x acc =
        if x = 1 then acc else
        if n mod x = 0 then help (x - 1) (acc + 1)
        else help (x - 1) acc
    help n 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisor (n : int) : int =
    let rec help (x : int) (acc : int) : int =
        if x = 1 then acc
        else if n mod x = 0 then help (x - 1) (acc + 1)
        else help (x - 1) acc
    in
    help n 0

