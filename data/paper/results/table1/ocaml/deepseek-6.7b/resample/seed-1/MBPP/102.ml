(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
let rec snake_to_camel (word : string) : string =
  match String.index_opt word '_' with
  | None -> word
  | Some n ->
     let sub, rest = String.sub word 0 n, String.sub word (n + 1) (String.length word - n - 1) in
     (String.lowercase_ascii sub) ^ (String.capitalize_ascii (snake_to_camel rest)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string =
  match String.index_opt word '_' with
  | None -> word
  | Some n ->
     let sub, rest = String.sub word 0 n, String.sub word (n + 1) (String.length word - n - 1) in
     String.concat "" [String.lowercase_ascii sub; String.capitalize_ascii (snake_to_camel rest)]

