(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/mlthon-exercises/lambda/mlthon-lambda-exercise-24.php *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let divisible_by_digits' (x : int) : bool =
        let rec digits (y : int) : int list =
            match y with
            | 0 -> []
            | y -> y % 10 :: digits (y / 10)
        in
        y % x = 0
    in
    match startnum with
    | n when n > endnum -> []
    | n -> if divisible_by_digits' n then n :: divisible_by_digits (n + 1) endnum else []

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:22: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let divisible_by_digits' (x : int) : bool =
        let rec digits (y : int) : int list =
            match y with
            | 0 -> []
            | y -> [y % 10] @ digits (y / 10)
        in
        List.for_all (fun x -> x = 0) digits y
    in
    match startnum with
    | n when n > endnum -> []
    | n -> if divisible_by_digits' n then n :: divisible_by_digits (n + 1) endnum else []

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:23: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec divisible_by_digits (startnum : int) (endnum : int) : int list =
    let divisible_by_digits' (x : int) : bool =
        let rec digits (y : int) : int list =
            match y with
            | 0 -> []
            | y -> [y mod 10] @ digits (y / 10)
        in
        List.for_all (fun x -> x = 0) digits y
    in
    match startnum with
    | n when n > endnum -> []
    | n -> if divisible_by_digits' n then n :: divisible_by_digits (n + 1) endnum else []

