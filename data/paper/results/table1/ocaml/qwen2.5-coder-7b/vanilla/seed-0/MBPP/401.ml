let rec add_nested_tuples (test_tup1 : int list list) (test_tup2 : int list list) : int list list = 
  let rec add_lists lst1 lst2 = 
    match (lst1, lst2) with 
      | ([], []) -> []
      | (x::xs, y::ys) -> (x + y)::(add_lists xs ys)
      | _ -> failwith "lists are of different lengths"
  in 
  List.map2 add_lists test_tup1 test_tup2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to perform index wise addition of list elements in the given two nested lists. *)
