(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to count number of digits in a given string. *)
let rec number_ctr (str : string) : int =
    let str_len = String.length str in
    let rec helper counter i =
        if i >= str_len then 
            counter
        else if str. = '0' || str. = '1' then 
            helper (counter + 1) i
        else 
            helper counter i
    in
    helper 0 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:22: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec number_ctr (str : string) : int =
    let str_len = String.length str in
    let rec helper (counter : int) (i : int) : int =
        if i >= str_len then
            counter
        else if str.[i] = '0' || str.[i] = '1' then
            helper (counter + 1) (i + 1)
        else
            helper counter (i + 1)
    in
    helper 0 0

