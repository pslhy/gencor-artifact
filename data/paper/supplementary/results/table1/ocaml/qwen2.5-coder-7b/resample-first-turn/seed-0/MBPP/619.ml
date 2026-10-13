let rec move_num (test_str : string) : string = 
  let is_num c = Char.isdigit c in
  let filter_num s = List.filter is_num (String.to_list s) in
  let filter_non_num s = List.filter (not �� is_num) (String.to_list s) in
  let nums = filter_num test_str in
  let others = filter_non_num test_str in
  String.concat "" others ^ String.concat "" (List.map (Char.escaped) nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
