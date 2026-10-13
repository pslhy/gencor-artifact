let rec extract_rear (test_tuple :  string * string * string) : string list =
  let (left, rear, right) = test_tuple in
  if rear != "" then [rear] else []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
