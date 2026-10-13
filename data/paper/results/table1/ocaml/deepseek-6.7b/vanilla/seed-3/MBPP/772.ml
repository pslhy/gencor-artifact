let rec remove_length (test_str : string) (k : int) : string =
  let str_lst = String.split_on_char ' ' test_str in
  let new_lst = List.filter (fun x -> String.length x <> k) str_lst in
  String.concat " " new_lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
