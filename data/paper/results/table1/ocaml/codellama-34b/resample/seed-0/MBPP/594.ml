(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the difference of the first even and first odd number of a given list. *)
let rec diff_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> 0
    | [x] -> x
    | x::y::zs ->
        if is_even x then
            if is_odd y then
                x - y
            else
                diff_even_odd (y :: zs)
        else
            diff_even_odd (x :: zs)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "is_even" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec diff_even_odd (list1 : int list) : int =
    match list1 with
    | [] -> 0
    | [x] -> x
    | x::y::zs ->
        if x mod 2 = 0 then
            if y mod 2 = 1 then
                x - y
            else
                diff_even_odd (y :: zs)
        else
            diff_even_odd (x :: zs)

