let rec tuple_str_int (test_str : string) :  int * int * int = 
    let str_list = Str.split (Str.regexp ",") test_str in
    (int_of_string (List.nth str_list 0), int_of_string (List.nth str_list 1), int_of_string (List.nth str_list 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
