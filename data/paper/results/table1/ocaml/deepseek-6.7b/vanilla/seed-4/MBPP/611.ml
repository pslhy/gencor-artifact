let rec max_of_nth (test_list : int list list) (n : int) : int =
  match test_list with
  | [] -> raise (Invalid_argument "Empty list")
  | (hd :: tl) ->
      let column_values = List.filter_map (fun xs -> List.nth_opt xs n) test_list in
      List.fold_left (fun acc x -> max acc x) (List.hd column_values) column_values


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
