(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find nth bell number. *)
let rec bell_Number (n : int) : int =
    match n with
    | 0 -> 1
    | 1 -> 1
    | _ -> bell_Number (n - 1) + bell_Number (n - 2)

let nth_Bell_Number (n : int) : int =
    if n < 0 then
        invalid_argument "n should be non-negative"
    else
        bell_Number n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:9: Unbound value "invalid_argument" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec bell_Number (n : int) : int =
    match n with
    | 0 -> 1
    | 1 -> 1
    | _ -> bell_Number (n - 1) + bell_Number (n - 2)

let nth_Bell_Number (n : int) : int =
    if n < 0 then
        invalid_argument "n should be non-negative"
    else
        bell_Number n

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:9: Unbound value "invalid_argument" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec bell_Number (n : int) : int =
    match n with
    | 0 -> 1
    | 1 -> 1
    | _ -> bell_Number (n - 1) + bell_Number (n - 2)

let nth_Bell_Number (n : int) : int =
    if n < 0 then
        failwith "Invalid argument, n should be non-negative"
    else
        bell_Number n

