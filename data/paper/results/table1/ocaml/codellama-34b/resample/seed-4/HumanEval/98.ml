(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s, count the number of uppercase vowels in even indices. *)
(*     For example: *)
(*     >>> count_upper "aBCdEf" *)
(*     1 *)
(*     >>> count_upper "abcdefg" *)
(*     0 *)
(*     >>> count_upper "dBBE" *)
(*     0 *)
let rec count_upper (s : string) : int = 
    let open String in
    if s = "" then 0 
    else 
        let first = s.[0] in
        let rest = sub s 2 (length s - 2) in
        if first = uppercase first then 1 + count_upper rest 
        else count_upper rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int = 
    let open String in
    if s = "" then 0 
    else 
        let first = s.[0] in
        let rest = sub s 2 (length s - 2) in
        if first = Char.uppercase first then 1 + count_upper rest 
        else count_upper rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:20: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int = 
    let open Char in
    if s = "" then 0 
    else 
        let first = s.[0] in
        let rest = sub s 2 (length s - 2) in
        if uppercase first then 1 + count_upper rest 
        else count_upper rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:20: Unbound value "sub" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int = 
    let open String in
    if s = "" then 0 
    else 
        let first = s.[0] in
        let rest = String.sub s 2 (String.length s - 2) in
        if Char.uppercase first then 1 + count_upper rest 
        else count_upper rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:12: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_upper (s : string) : int = 
    let open String in
    if s = "" then 0 
    else 
        let first = s.[0] in
        let rest = String.sub s 2 (String.length s - 2) in
        if String.uppercase first = first then 1 + count_upper rest 
        else count_upper rest

