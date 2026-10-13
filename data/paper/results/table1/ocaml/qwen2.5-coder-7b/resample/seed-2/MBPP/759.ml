(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
let rec is_decimal (num : string) : bool = 
    let has_decimal_point = function 
        | [] -> false 
        | h::t -> (h = '.') || has_decimal_point t 
    in 
    if not (has_decimal_point (String.to_list num)) then 
        false 
    else 
        let parts = String.split_on_char '.' num in 
        match parts with 
        | [int; dec] -> Int.length dec = 2 && int |> String.for_all (fun c -> c >= '0' && c <= '9') 
        | _ -> false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:32: Unbound value "has_decimal_point" *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
    let rec has_decimal_point = function 
        | [] -> false 
        | h::t -> (h = '.') || has_decimal_point t 
    in 
    if not (has_decimal_point (String.to_list num)) then 
        false 
    else 
        let parts = String.split_on_char '.' num in 
        match parts with 
        | [int; dec] -> Int.length dec = 2 && int |> String.for_all (fun c -> c >= '0' && c <= '9') 
        | _ -> false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:32: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
    let rec has_decimal_point = function 
        | [] -> false 
        | h::t -> (h = '.') || has_decimal_point t 
    in 
    if not (has_decimal_point (List.of_seq (String.to_seq num))) then 
        false 
    else 
        let parts = String.split_on_char '.' num in 
        match parts with 
        | [int; dec] -> Int.length dec = 2 && int |> String.for_all (fun c -> c >= '0' && c <= '9') 
        | _ -> false

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:25: Unbound value "Int.length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
    let rec has_decimal_point = function 
        | [] -> false 
        | h::t -> (h = '.') || has_decimal_point t 
    in 
    if not (has_decimal_point (List.of_seq (String.to_seq num))) then 
        false 
    else 
        let parts = String.split_on_char '.' num in 
        match parts with 
        | [int; dec] -> String.length dec = 2 && int |> String.for_all (fun c -> c >= '0' && c <= '9') 
        | _ -> false

