let rec tuple_str_int (test_str : string) :  int * int * int = 
    let a = int_of_string (test_str (0)) in
    let b = int_of_string (test_str (1)) in
    let c = int_of_string (test_str (2)) in
    (a, b, c)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert tuple string to integer tuple. *)
