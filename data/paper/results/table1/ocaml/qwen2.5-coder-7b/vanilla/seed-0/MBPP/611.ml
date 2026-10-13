let rec max_of_nth (test_list : int list list) (n : int) : int = 
  let rec helper columns max = 
    match columns with
    | [] -> max
    | h::t -> helper t (max (List.nth h n))
  in
  helper test_list (List.nth (List.hd test_list) n)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
