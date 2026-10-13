
let rec tuple_str_int (test_str : string) :  int * int * int =
match String.split_on_char '(' test_str with
| [|x|] -> failwith "Invalid input string"
| [|x; y|] ->
  match (String.split_on_char ',' (String.trim (String.sub test_str 1 (String.length test_str - 2))),
  String.split_on_char ')' (String.trim (String.sub test_str 1 (String.length test_str - 2)))) with
  | ([_x], [y]) -> (int_of_string _x, int_of_string y, 0)
  | ([_x; _y], [y]) -> (int_of_string _x, int_of_string _y, int_of_string y)
  | _ -> failwith "Invalid input string"
| _ -> failwith "Invalid input string"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
