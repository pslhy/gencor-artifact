let rec check_char (string : string) : string =
  if(string.[0] != string.[string.len -1]) then "false" else "true"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
