(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else
        let (quotient, remainder) = (n / 2, n mod 2)
        decimal_to_binary(quotient) + string_of_int(remainder)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else
        let quotient, remainder = (n / 2), (n mod 2)
        let result = decimal_to_binary(quotient)
        result + string_of_int(remainder)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec decimal_to_binary (n : int) : string =
    if n = 0 then "0"
    else
        let quotient, remainder = (n / 2), (n mod 2) in
        let result = decimal_to_binary(quotient) in
        result + string_of_int(remainder)

