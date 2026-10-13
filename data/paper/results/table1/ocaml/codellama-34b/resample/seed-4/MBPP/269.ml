(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the ascii value of a character. *)
let rec ascii_value (k : string) : int = 
    (* base case: k has length 0 *)
    if k = "" then 0
    (* recursive case: k has length >= 1 *)
    else k.[0] + ascii_value (k.[1 ..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:36: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec ascii_value (k : string) : int =
  (* base case: k has length 0 *)
  if k = "" then 0
  (* recursive case: k has length >= 1 *)
  else (k.(0) + ascii_value (k.[1 ..])
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:35: Syntax error: "]" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec ascii_value (k : string) : int =
  (* base case: k has length 0 *)
  if k = "" then 0
  (* recursive case: k has length >= 1 *)
  else Char.code k.[0] + ascii_value (String.sub k 1 (String.length k - 1))

