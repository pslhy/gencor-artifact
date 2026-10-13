let rec tuple_str_int (test_str : string) :  int * int * int =
  match String.split_on_char ',' test_str with
  | (x :: y :: z :: []) -> (int_of_string x, int_of_string y, int_of_string z)
  | _ -> raise (Invalid_argument "Input string is not in correct format.")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
