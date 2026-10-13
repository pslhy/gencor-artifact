(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to append the given list to the given tuples. *)
let rec add_lists (test_list : int list) (test_tup :  int * int) :  int * int * int * int * int = 
    match test_tup with
    | (x, y) -> (x, x + y, y, y + x, x + y + x);;

