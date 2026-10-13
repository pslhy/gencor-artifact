(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int =
    match nums with
        | [] -> 0
        | [x] -> 0
        | x :: y :: _ -> (if x > y then x - y else y - x)

let rec min_max (nums : int list) : int * int =
    match nums with
        | [] -> (0, 0)
        | [x] -> (x, x)
        | x :: y :: _ -> (
            let (min', max') = min_max (y :: _)
            in (if x < min' then x else min', if x > max' then x else max')
        )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:46: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
        | [] -> 0
        | [x] -> 0
        | x :: y :: _ -> (if x > y then x - y else y - x)

let rec min_max (nums : int list) : int * int =
    match nums with
        | [] -> None
        | [x] -> (x, x)
        | x :: y :: _ -> (
            let (min', max') = min_max (y :: _)
            in if x < min' then (x, max') else (min', x)
        )

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:46: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
        | [] -> 0
        | [x] -> 0
        | x :: y :: _ -> (
            let (min, max) = min_max (y :: _)
            in if x < min then x - max else max - x)

let rec min_max (nums : int list) : int * int =
    match nums with
        | [] -> None
        | [x] -> (x, x)
        | x :: y :: _ -> (
            let (min', max') = min_max (y :: _)
            in if x >= min' then (x, max') else (min', x)
        )

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:44: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
        | [] -> 0
        | [x] -> 0
        | x :: y :: _ -> (
            let (min, max) = min_max (y :: _)
            in if x < min then x - max else max - x)

let rec min_max (nums : int list) : int * int =
    match nums with
        | [] -> None
        | [x] -> (x, x)
        | x :: y :: _ -> (
            let (min', max') = min_max (y :: _)
            in if x >= min' then (x, max') else (min', x)
        )

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:44: Syntax error: "wildcard "_"" not expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
    match nums with
    | [] -> 0
    | [x] -> 0
    | x :: y :: _ ->
        let (min, max) = min_max (y :: _)
        in if x < min then x - max else max - x

let rec min_max (nums : int list) : int * int =
    match nums with
    | [] -> None
    | [x] -> (x, x)
    | x :: y :: _ ->
        let (min', max') = min_max (y :: _)
        in if x >= min' then (x, max') else (min', x)

