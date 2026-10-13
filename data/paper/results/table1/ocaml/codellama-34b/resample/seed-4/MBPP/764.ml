(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
let rec number_ctr (str : string) : int = 
    (* base case: if the string is empty, there are no digits *)
    if str = "" then 0
    else
        (* rec case: if the string has at least one character, check if it is a digit *)
        if Char.is_digit(str.[0]) then 1 + number_ctr(str.[1..])
        (* if the first character is not a digit, ignore it and continue counting the remaining digits *)
        else number_ctr(str.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:63: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
    if str = "" then 0
    else if Char.is_digit (str.[0]) then 1 + number_ctr (str.[1..])
    else number_ctr (str.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:66: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
    if str = "" then 0
    else if Char.is_digit(str.[0]) then 1 + number_ctr (str.[1..])
    else number_ctr (str.[1..])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:65: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
    if str = "" then 0
    else if Char.is_digit(str.[0]) then 1 + number_ctr (str.[1..])
    else number_ctr (str.[1..])

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:65: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
    if str = "" then 0
    else if Char.is_digit(str.[0]) then 1 + number_ctr (str.[1..])
    else number_ctr (str.[1..])

