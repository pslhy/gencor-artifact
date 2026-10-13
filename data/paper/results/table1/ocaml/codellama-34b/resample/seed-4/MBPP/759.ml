(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether a given string is a decimal number with a precision of 2. *)
let rec is_decimal (num : string) : bool = 
    let is_digit c = char_of_int 48 <= c && c <= char_of_int 57 in
    let rec check_precision2 index n = 
        if n < 2 && index >= 0 && index < String.length num then 
            is_digit (String.get num index) && check_precision2 (2 * index + 1) (n + 1) 
        else n = 0 in 
    !String.is_empty num && check_precision2 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:6: Unbound value "String.is_empty" *)
(*     Hint: Did you mean "empty"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_decimal (num : string) : bool = 
    let is_digit c = char_of_int 48 <= c && c <= char_of_int 57 in
    let rec check_precision2 index n = 
        if n < 2 && index >= 0 && index < String.length num then 
            is_digit (String.get num index) && check_precision2 (2 * index + 1) (n + 1) 
        else n = 0 in 
    num |> empty |> is_empty |> check_precision2 0 0

