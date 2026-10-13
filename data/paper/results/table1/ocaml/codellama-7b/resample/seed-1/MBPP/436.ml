(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to return the negative numbers in a list. *)
let rec neg_nos (list1 : int list) : int list =
match list1 with
| [] -> []
| hd :: tl when hd < 0 -> hd :: neg_nos tl
| _ :: tl -> neg_nos tl
in

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec neg_nos (list1 : int list) : int list =
match list1 with
| [] -> []
| hd :: tl when hd < 0 -> hd :: neg_nos tl
| _ :: tl -> neg_nos tl

