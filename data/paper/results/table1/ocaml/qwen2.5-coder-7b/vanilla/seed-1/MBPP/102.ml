let rec snake_to_camel (word : string) : string = 
  let rec convert acc rest =
    match rest with
    | [] -> acc
    | '_' :: 'a' :: rest' -> convert (acc ^ (Char.uppercase_ascii 'a')) rest'
    | 'a' :: rest' -> convert (acc ^ (Char.lowercase_ascii 'a')) rest'
    | '_' :: [] -> acc
    | 'a' :: [] -> acc ^ (Char.lowercase_ascii 'a')
    | _ :: rest' -> convert acc rest'
  in convert "" (String.to_list word)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
