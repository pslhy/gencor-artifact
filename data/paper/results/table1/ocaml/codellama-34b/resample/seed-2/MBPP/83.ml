(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
let rec get_Char (strr : string) : string =
    match strr with
        | [] -> "" 
        | h::t -> h ^ get_char t)

let rec add_ascii (strr : string) : int =
    match strr with
        | [] -> 0 
        | h::t -> ord h + add_ascii t)

let cycle_char strr = get_char (add_ascii strr)

let strr = "caml"

let result = cycle_char strr

let () = print_endline result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:33: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string =
    match strr with
    | [] -> ""
    | h::t -> h ^ t

let rec add_ascii (strr : string) : int =
    match strr with
    | [] -> 0
    | h::t -> ord (h^t)

let cycle_char (strr : string) : char =
    get_char (add_ascii strr)

let strr = "caml"

let result = cycle_char strr

let () = print_endline result

