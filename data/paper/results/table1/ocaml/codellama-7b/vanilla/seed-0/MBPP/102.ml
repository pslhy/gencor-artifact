let rec snake_to_camel (word : string) : string =
  match word with
  | "" -> ""
  | _ ->
    let rec convert (word : string) (acc : string) : string =
      match word with
      | "" -> acc
      | x::xs ->
        let first_char = (if acc = "" then x else int_of_char (Char.uppercase_ascii x)) in
        let rest = (int_of_string (String.make 1 first_char) ^ xs) in
        convert xs (acc ^ rest)
    in
    (convert (Str.split (Str.regexp "_") word) "")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
