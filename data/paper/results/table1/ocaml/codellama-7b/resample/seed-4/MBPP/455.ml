(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given month number contains 31 days or not. *)
let rec check_monthnumb_number (monthnum2 : int) : bool = 
    match(monthnumb2 with
        | _ when (monthnumb2 =< 12) -> true : bool
        | _ -> false : bool
    )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumb_number (monthnum2 : int) : bool = 
    match(monthnumb2 with
        | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
        | 4 | 6 | 9 | 11 -> 30
        | 2 -> if (is_leap_year(yearnumb)) then 29 else 28
        | _ -> raise
    )

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumb_number (monthnum2 : int) : bool = 
    match(monthnumb2 with
        | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
        | 4 | 6 | 9 | 11 -> 30
        | 2 -> if (is_leap_year(yearnumb)) then 29 else 28
        | _ -> false
    )

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumb_number (monthnum2 : int) : bool = 
    match monthnumb2 with
    | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
    | 4 | 6 | 9 | 11 -> 30
    | 2 -> if is_leap_year yearnumb then 29 else 28
    | _ -> false

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Unbound value "monthnumb2" *)
(*     Hint: Did you mean "monthnum2"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_monthnumb_number (monthnum2 : int) : bool = 
    match (monthnum2 with
    | 1 | 3 | 5 | 7 | 8 | 10 | 12 -> 31
    | 4 | 6 | 9 | 11 -> 30
    | 2 -> if is_leap_year yearnumb then 29 else 28
    | _ -> false)

