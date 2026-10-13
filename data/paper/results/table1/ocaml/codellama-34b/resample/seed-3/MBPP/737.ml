(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
let rec check_str (string : string) : bool =
  if(string = "" || string = "") then false else String.length(string) = 0 else true

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:76: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_str (string : string) : bool =
  if(string = "" || string = "") then false else String.length(string) = 0

