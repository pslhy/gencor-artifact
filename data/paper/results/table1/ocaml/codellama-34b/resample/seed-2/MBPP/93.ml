(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to calculate the value of 'a' to the power 'b'. *)
let rec power (a : int) (b : int) : int =
    match b with
    | 0 -> 1
    | n when n > 0 -> a * power a (b - 1)
    | _ -> invalidArg "b" "Expected non-negative integer for exponent"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:12: Unbound value "invalidArg" *)
(*     Hint: Did you mean "invalid_arg"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec power (a : int) (b : int) : int =
    match b with
    | 0 -> 1
    | n when n > 0 -> a * power a (b - 1)
    | _ -> invalid_arg "b" "Expected non-negative integer for exponent"

