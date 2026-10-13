(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
let rec count_charac (str1 : string) : int =
    match str1 with
        | "" -> 0
        | _ -> 1 + count_charac (String.sub str1 1 (String.length str1 - 1)));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:77: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_charac (str1 : string) : int =
    if String.length str1 = 0 then
        0
    else
        match str1 with
        | #"A" .. #"Z" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | #"a" .. #"z" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | _ -> count_charac (String.sub str1 1 (String.length str1 - 1))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_charac (str1 : string) : int =
    if String.length str1 = 0 then
        0
    else
        match str1 with
        | #"A" .. #"Z" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | #"a" .. #"z" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | _ -> count_charac (String.sub str1 1 (String.length str1 - 1))

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_charac (str1 : string) : int =
    if String.length str1 = 0 then
        0
    else
        match str1 with
        | #"A" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | #"a" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | _ -> count_charac (String.sub str1 1 (String.length str1 - 1))

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_charac (str1 : string) : int =
    if String.length str1 = 0 then
        0
    else
        match str1 with
        | #"A" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | #"a" -> count_charac (String.sub str1 1 (String.length str1 - 1)) + 1
        | _ -> count_charac (String.sub str1 1 (String.length str1 - 1))

