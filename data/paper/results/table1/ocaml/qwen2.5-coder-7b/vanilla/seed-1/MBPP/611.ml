let rec max_of_nth (test_list : int list list) (n : int) : int = 
  List.map (fun row -> List.nth row n) test_list 
  |> List.fold_left max Int.min_int


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
