let rec replace_spaces (string : string) : string =
  match string with
  | "" -> ""
  | x :: xs -> (if x = ' ' then "%20" ^ replace_spaces xs else String.make 1 x) ^ replace_spaces (String.sub xs 1 (String.length xs - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
