(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the length of the word is odd or not. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s = s.[1 .. -1] then true
    else word_len s.[1 .. -1]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:22: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s.[0] = s.[String.length s - 1] then word_len s.[1 .. String.length s - 2]
    else true

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:64: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec word_len (s : string) : bool =
    if s = "" then false
    else if s.[0] = s.[String.length s - 1] then word_len (String.sub s 1 (String.length s - 2))
    else true

