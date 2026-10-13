(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
let rec tuple_str_int (test_str : string) :  int * int * int = 
match test_str  with
| "_," _ -> (0,0,0), test_str.replace("_", "")
| _ -> (int_of_string test_str.1,int_of_string test_str.2,test_str.3)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
match test_str with
| "_," _ -> (0,0,0), test_str.replace("_", "")
| _ -> (int_of_string test_str.1,int_of_string test_str.2,test_str.3)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:8: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
  match test_str with
  | "_," -> (0,0,0)
  | _ -> (int_of_string test_str.1,int_of_string test_str.2,test_str.3);;

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
  match test_str with
  | "_," -> (0,0,0)
  | _ -> (int_of_string test_str.1,int_of_string test_str.2,test_str.3)

let string_of_tuple (x : int * int * int) =
  "(" ^ (string_of_int (fst x) ^ ",") ^ " , " ^ (string_of_int (snd x) ^ ", ") ^ (string_of_int (trd x) ^ ")")

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:34: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec tuple_str_int (test_str : string) :  int * int * int =
  match test_str with
  | "_," -> (0,0,0)
  | _ -> (int_of_string (fst test_str), int_of_string (snd test_str), int_of_string (trd test_str))

let string_of_tuple (x : int * int * int) =
  "(" ^ (string_of_int (fst x) ^ ",") ^ " , " ^ (string_of_int (snd x) ^ ", ") ^ (string_of_int (trd x) ^ ")")

