let rec new_tuple (test_list : string list) (test_str : string) :  string * string * string =
  if List.length test_list = 5 then (test_list.(1), test_list.(2), test_list.(3))
  else if List.length test_list = 10 then (test_list.(4), test_list.(5), test_list.(6))
  else (test_list.(7), test_list.(8), test_list.(9));;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to create a new tuple from the given string and list. *)
