let rec snake_to_camel (word : string) : string =
  match word with
  | "" -> ""
  | _ -> (String.make 1 (Char.uppercase_ascii (String.get word 0))) ^ (String.make (String.length word - 1) '_') ^ snake_to_camel (String.sub word 2 ((String.length word) - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
