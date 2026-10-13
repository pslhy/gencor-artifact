(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
    let str_list = Str.split (Str.regexp ",") test_str in
    (int_of_string (List.nth str_list 0), int_of_string (List.nth str_list 1), int_of_string (List.nth str_list 2))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
    let str_list = Str.split (Str.regexp ",") test_str in
    (int_of_string (List.nth str_list 0), int_of_string (List.nth str_list 1), int_of_string (List.nth str_list 2))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:20: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
    let str_list = String.split_on_char ',' test_str in
    (int_of_string (List.nth str_list 0), int_of_string (List.nth str_list 1), int_of_string (List.nth str_list 2))

