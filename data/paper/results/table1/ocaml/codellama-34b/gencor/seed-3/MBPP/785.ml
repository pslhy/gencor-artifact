
let rec tuple_str_int (test_str : string) :  int * int * int = 
  let strlist = String.split_on_char ',' test_str in
  let strlist = String.map int_of_string strlist in
  match strlist with
  | x::y::[] -> (x, y)
  | x::y::tl -> (x, y, List.length tl)
  | [] -> failwith "tuple_str_int: not a valid tuple string"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
