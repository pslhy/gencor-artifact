let rec snake_to_camel (word : string) : string =
match word with
| [] -> ""
| [c] -> string_of_char c
| c :: rest ->
let rest_capitalized = rest |> List.map ~f:(fun c -> String.capitalize_ascii (String.make 1 c)) in
String.concat ~sep:"" (c :: rest_capitalized)
in
snake_to_camel "some_snake_case_string"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
