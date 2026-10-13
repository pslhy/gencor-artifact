let rec snake_to_camel (word : string) : string = 
  let split_on_underscore = String.split_on_char '_' word in
  let rec helper words result =
    match words with
    | [] -> result
    | [x] -> result ^ x
    | x::xs -> helper xs (result ^ (String.capitalize_ascii x))
  in
  helper split_on_underscore ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
