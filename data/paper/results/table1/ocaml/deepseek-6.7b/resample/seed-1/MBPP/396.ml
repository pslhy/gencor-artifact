(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
let rec check_char (string : string) : string =
  match string with
  | "" -> "true"
  | s -> (String.sub s 0 1) = (String.sub s ((String.length s) - 1) 1)
       ,,
       check_char (String.sub s 1 ((String.length s) - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:9: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_char (string : string) : string =
  if string = "" then
    "true"
  else if (String.sub string 0 1) = (String.sub string ((String.length string) - 1) 1) then
    "true"
  else 
    "false"

