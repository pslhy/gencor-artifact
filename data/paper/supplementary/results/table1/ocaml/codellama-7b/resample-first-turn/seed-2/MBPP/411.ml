let rec snake_to_camel (word : string) : string =
  match word with
  | [] -> []
  | h :: t when h = '_' -> t.[0] :: snake_to_camel t.[1..]
  | h :: t -> h :: snake_to_camel t

let convert_to_camel_case (word : string) : string =
  let rec snake_to_camel_helper (acc : string) (word : string) : string =
    match word with
    | [] -> acc
    | h :: t when h = '_' -> snake_to_camel_helper (acc ^ Char.uppercase h) t.[1..]
    | h :: t -> snake_to_camel_helper (acc ^ h) t
  in
  snake_to_camel_helper "" word


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
