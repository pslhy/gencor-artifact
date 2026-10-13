let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int = 
    let tup1, tup2 = test_tup in
    (tup1, tup2::test_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
