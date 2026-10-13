let rec sort_sublists (input_list : string list list) : string list list =
  match input_list with
  | [] -> []
  | [sublist] -> [List.sort compare sublist]
  | sublist1 :: sublist2 :: tail ->
    let sorted_sublist1 = List.sort compare sublist1 in
    let sorted_sublist2 = List.sort compare sublist2 in
    sorted_sublist1 :: sorted_sublist2 :: sort_sublists tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort each sublist of strings in a given list of lists. *)
