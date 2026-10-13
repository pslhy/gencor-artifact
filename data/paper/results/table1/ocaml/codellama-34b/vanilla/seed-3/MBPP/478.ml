let rec remove_lowercase (str1 : string) : string =
  if str1 = "" then "" else
  let (hd, tl) = str1.(0), str1.(1..) in
  if Char.is_lowercase hd then tl else char hd ^ remove_lowercase tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
