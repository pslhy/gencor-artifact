let rec tuple_str_int (test_str : string) :  int * int * int = 
match test_str  with
| "_," _ -> (0,0,0), test_str.replace("_", "")
| _ -> (int_of_string test_str.1,int_of_string test_str.2,test_str.3)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
