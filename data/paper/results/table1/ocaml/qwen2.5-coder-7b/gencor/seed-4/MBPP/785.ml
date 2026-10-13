
let rec tuple_str_int (test_str : string) :  int * int * int = 
  let nums = String.split_on_char ',' test_str in
  let int1 = int_of_string (List.nth nums 0) in
  let int2 = int_of_string (List.nth nums 1) in
  let int3 = int_of_string (List.nth nums 2) in
  (int1, int2, int3)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
