
let rec remove_length (test_str : string) (k : int) : string =
  if k < 1 then test_str
  else String.trim (String.concat " " (List.filter (fun x -> String.length x <> k) (String.split_on_char ' ' test_str)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all the words with k length in the given string. *)
