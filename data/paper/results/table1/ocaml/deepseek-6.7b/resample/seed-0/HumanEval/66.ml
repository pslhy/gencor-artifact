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
    else if Char.Code(String.get s 0) > 64 && Char.Code(String.get s 0) < 91 then
        Char.Code(String.get s 0) + digitSum (String.sub s 1 (String.length s - 1))
    else
        digitSum (String.sub s 1 (String.length s - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:13: Unbound constructor "Char.Code" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec digitSum (s : string) : int =
    if s = "" then 0
    else if Char.code (String.get s 0) > 64 && Char.code (String.get s 0) < 91 then
        Char.code (String.get s 0) + digitSum (String.sub s 1 (String.length s - 1))
    else
        digitSum (String.sub s 1 (String.length s - 1))

