let rec add_dict_to_tuple (test_tup :  int * int * int) (test_dict : (string * int) list) :  int * int * int * (string * int) list =
    let new_list = List.fold_left (fun (a,b,c,acc) (key,value) -> (a,b,c,((key,value)::acc))) test_tup test_dict in
    new_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to add an association list to the tuple. The output should be a tuple. *)
