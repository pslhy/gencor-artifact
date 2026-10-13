(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
let rec get_Char (strr : string) : string =
    if strr.[0] == '\0' then 
        '\0' 
    else  
        ((int_of_char strr.[0]) + (char_of_int strr.[0]) modulo 26):: get_Char (strr.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Illegal backslash escape in string or character (\0) *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string =
    if strr.[0] = '\000' then
        '\000'
    else
        let c = int_of_char(strr.[0]) in
        let c =  (c + c mod 26) mod 26 in
        let c = char_of_int(c) in
        c :: get_Char (strr.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:33: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string =
    if strr.[0] = '\000' then
        let c = int_of_char(strr.[0]) in
        let c =  (c + c mod 26) mod 26 in
        let c = char_of_int(c) in
        c :: get_Char (strr.[1..])

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:33: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec get_Char (strr : string) : string =
    if strr.[0] = '\000' then
        let c = int_of_char strr.[0] in
        let c =  (c + c mod 26) mod 26 in
        char_of_int c
    else
        ""

