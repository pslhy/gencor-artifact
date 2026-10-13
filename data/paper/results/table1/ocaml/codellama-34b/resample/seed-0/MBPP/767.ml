(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum, *)
let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        if x < sum then
            let rest_count = get_pairs_count xs (sum - x)
            if rest_count > 0 then 
                1 + rest_count
            else
                0
        else
            0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        if x < sum then
            let rest_count = get_pairs_count xs (sum - x)
            if rest_count > 0 then 
                1 + rest_count
            else
                0
        else
            0

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        if x < sum then
            let rest_count = get_pairs_count xs (sum - x)
            if rest_count > 0 then 1 + rest_count else 0
        else 0

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:13: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_pairs_count (arr : int list) (sum : int) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        if x < sum then
            let rest_count = get_pairs_count xs (sum - x) in
            if rest_count > 0 then 1 + rest_count else 0
        else 0

