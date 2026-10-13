(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count bidirectional tuple pairs. *)
let rec count_bidirectional (test_list :  (int * int) list) : int =
match test_list with
| [] -> 0
| (x,y),::rest -> 1 + count_bidirectional (y,x :: rest)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error: "pattern" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int =
match test_list with
| [] -> 0
| (x,y),::rest -> 1 + count_bidirectional (y,x :: rest)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:9: Syntax error: "pattern" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (x,y),::rest -> 1 + count_bidirectional (y,x :: rest)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Syntax error: "pattern" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (x,y),::rest -> 1 + count_bidirectional (y,x :: rest)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:11: Syntax error: "pattern" expected. *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_bidirectional (test_list :  (int * int) list) : int =
  match test_list with
  | [] -> 0
  | (x,y) :: rest -> 1 + count_bidirectional (y,x :: rest)

