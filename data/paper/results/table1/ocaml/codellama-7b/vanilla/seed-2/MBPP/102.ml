let rec snake_to_camel (word : string) : string =
  match word with
  | [] -> []
  | h :: t when h = '_' -> t.[0] :: snake_to_camel t.[1..]
  | h :: t -> h :: snake_to_camel t

let convert word =
  let snake_word = String.lowercase_ascii word
  let camel_word = snake_to_camel snake_word
  String.capitalize_ascii camel_word


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
