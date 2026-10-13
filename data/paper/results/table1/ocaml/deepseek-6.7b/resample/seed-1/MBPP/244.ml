(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the next perfect square greater than a given number. *)
let rec next_Perfect_Square (n : int) : int =
    match n with
    | n when (n <= 0) -> 0
    | _ ->
        let next = n + 1 in
        let sqrt_next = nint_sqrt next in
        if next = (sqrt_next * sqrt_next) then next
        else next_Perfect_Square (next)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:25: Unbound value "nint_sqrt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec next_Perfect_Square (n : int) : int =
    if n <= 0 then 0 else
    let next = n + 1 in
    let sqrt_next = int_of_float (sqrt (float_of_int next)) in
    if next = (sqrt_next * sqrt_next) then next
    else next_Perfect_Square (next)

