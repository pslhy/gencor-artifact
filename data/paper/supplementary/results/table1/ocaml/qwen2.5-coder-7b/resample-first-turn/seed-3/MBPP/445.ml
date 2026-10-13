let rec index_multiplication (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
    List.mapi (fun i lst1 -> List.mapi (fun j x -> x * List.nth lst2 (i + j)) lst1) test_tup1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise multiplication of list elements in the given two lists. *)
