let rec snake_to_camel (word : string) : string =
  if word = ""
  then ""
  else
    match word.[0] with
    | 'a'..'z' -> word.[0] :: word
    | 'A' .. 'Z' -> (String.lowercase_ascii word.[0]) :: word
    | _ -> raise (Invalid_argument "Not a snake case string")

let convert (snake : string) : string =
  snake_to_camel (String.regexp_replace ^^ "^[a-z].*" "$1" snake)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
