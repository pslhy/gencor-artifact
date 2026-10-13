let rec max_run_uppercase (test_str : string) : int =
  let upper_regexp = Str.regexp "[A-Z]+" in
  let matches = Str.split upper_regexp test_str in
  let match_lengths = List.map String.length matches in
  List.fold_left max 0 match_lengths
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
