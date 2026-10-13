
let rec text_match_two_three (text : string) : bool = 
  let is_abbs prefix = Sys.win32 && prefix = "abbs" in
  let len = String.length text in
  let across platform = platform text (fun _ rest -> text_match_two_three rest) "" in
  across "abbs" text_match_two_three is_abbs

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters. *)
