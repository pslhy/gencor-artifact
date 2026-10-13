(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return a greatest common divisor of two integers a and b *)
(*     >>> greatest_common_divisor 3 5 *)
(*     1 *)
(*     >>> greatest_common_divisor 25 15 *)
(*     5 *)
let rec greatest_common_divisor (a : int) (b : int) : int =
  match (a, b) with
  | 0, 0 -> 0
  | 0, _ -> b
  | _, 0 -> a
  | _ -> greatest_common_divisor (b % a) a

let () =
  print_int (greatest_common_divisor 3 5);
  print_endline "";
  print_int (greatest_common_divisor 25 15);
  print_endline ""

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:37: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec greatest_common_divisor (a : int) (b : int) : int =
  match a, b with
  | 0, _ -> b
  | _, 0 -> a
  | _, _ -> greatest_common_divisor (b % a) a

let () =
  print_int (greatest_common_divisor 3 5);
  print_endline "";
  print_int (greatest_common_divisor 25 15);
  print_endline ""

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:40: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec greatest_common_divisor (a : int) (b : int) : int =
  match a, b with
  | 0, _ -> b
  | _, 0 -> a
  | _, _ -> greatest_common_divisor (b mod a) a

let () =
  print_int (greatest_common_divisor 3 5);
  print_endline "";
  print_int (greatest_common_divisor 25 15);
  print_endline ""

