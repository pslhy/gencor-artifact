(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
  let str_arr = Str.split (Str.regexp ",") test_str in
  let int_arr = List.map int_of_string str_arr in
  match int_arr with
  | x::y::z::[] -> (x, y, z)
  | _ -> failwith "Not a suitable tuple string"
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
  let str_arr = String.split_on_char ',' test_str in
  let int_arr = List.map int_of_string str_arr in
  match int_arr with
  | x::y::z::[] -> (x, y, z)
  | _ -> failwith "Not a suitable tuple string"
;;

