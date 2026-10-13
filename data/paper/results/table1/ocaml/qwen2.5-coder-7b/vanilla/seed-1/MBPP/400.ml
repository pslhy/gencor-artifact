let rec extract_freq (test_list :  (int * int) list) : int = 
  let rec check (test_list :  (int * int) list) (test_set :  (int * int) list) : (int * int) list = 
    match test_list with
    [] -> test_set
    | h::t -> if List.mem h test_set then check t test_set else check t (h::test_set)
  in 
  List.length (check test_list [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract the number of unique tuples in the given list. *)
