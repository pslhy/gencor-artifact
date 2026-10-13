let rec snake_to_camel (word : string) : string = 
  let rec helper acc chars = 
    match chars with
    | [] -> acc
    | '_' :: rest -> 
        let (first, rest') = List.split_at 1 rest in
        helper (acc ^ String.uppercase_ascii first) rest'
    | c :: rest -> helper (acc ^ String.lowercase_ascii (String.make 1 c)) rest
  in
  helper "" (List.of_seq (String.to_seq word))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
