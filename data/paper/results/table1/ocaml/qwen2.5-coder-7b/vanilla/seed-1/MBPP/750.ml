let rec add_tuple (test_list : int list) (test_tup :  int * int) : int list = 
  test_list @ [fst test_tup; snd test_tup]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add the given tuple to the given list. *)
