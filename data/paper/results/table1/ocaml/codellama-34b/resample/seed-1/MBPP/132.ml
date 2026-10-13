(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a list to a string. *)
let rec tup_string (tup1 : string list) : string =
match tup1 with
| [] -> "")
| hd :: tl -> "(" ^ (tup_string tl) ^ ")"
| (a, b, c) -> "(" ^ a ^ ", " ^ b ^ ", " ^ c ^ ")"

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tup_string (tup1 : string list) : string =
  match tup1 with
  | [] -> ""
  | hd :: tl -> "(" ^ (tup_string tl) ^ ")"
  | (a, b, c) -> "(" ^ a ^ ", " ^ b ^ ", " ^ c ^ ")"

