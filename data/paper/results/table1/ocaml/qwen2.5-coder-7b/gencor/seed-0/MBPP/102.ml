
let rec snake_to_camel (word : string) : string = 
  let rec helper acc chars = 
    match chars with
    | [] -> acc
    | '_' :: rest -> 
        let (first, rest') = List.split rest in
        helper (acc ^ (String.uppercase_ascii (String.make 1 first))) rest'
    | x :: rest -> helper (acc ^ (String.make 1 x)) rest
  in helper "" (String.to_seq word |> List.of_seq)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
