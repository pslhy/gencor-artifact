(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Task *)
(*     Write a function that takes a string as input and returns the sum of the upper characters only' *)
(*     ASCII codes. *)
(*     Examples: *)
(*     >>> digitSum "" *)
(*     0 *)
(*     >>> digitSum "abAB" *)
(*     131 *)
(*     >>> digitSum "abcCd" *)
(*     67 *)
(*     >>> digitSum "helloE" *)
(*     69 *)
(*     >>> digitSum "woArBld" *)
(*     131 *)
(*     >>> digitSum "aAaaaXa" *)
(*     153 *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if Char.isUpper (Str.get s 0) then Char.code (Str.get s 0) + digitSum (Str.slice 1 (Str.length s - 1) s)
    else digitSum (Str.slice 1 (Str.length s - 1) s)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "Char.isUpper" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if isUpperCase (Str.get s 0) then Char.code (Str.get s 0) + digitSum (Str.slice 1 (Str.length s - 1) s)
    else digitSum (Str.slice 1 (Str.length s - 1) s)

let isUpperCase (c : char) : bool =
    c >= 'A' && c <= 'Z'

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "isUpperCase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if isUpperCase (Str.get s 0) then Char.code (Str.get s 0) + digitSum (Str.slice 1 (Str.length s - 1) s)
    else digitSum (Str.slice 1 (Str.length s - 1) s)

let isUpperCase (c : char) : bool =
    c >= 'A' && c <= 'Z'

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound value "isUpperCase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if IsUpperCase (Str.get s 0) then Char.code (Str.get s 0) + digitSum (Str.slice 1 (Str.length s - 1) s)
    else digitSum (Str.slice 1 (Str.length s - 1) s)

let IsUpperCase (c : char) : bool =
    c >= 'A' && c <= 'Z'

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if (isUpperCase (Str.get s 0)) then (Char.code (Str.get s 0)) + (digitSum (Str.slice 1 (Str.length s - 1) s))
    else digitSum (Str.slice 1 (Str.length s - 1) s)

let isUpperCase (c : char) : bool =
    c >= 'A' && c <= 'Z'

