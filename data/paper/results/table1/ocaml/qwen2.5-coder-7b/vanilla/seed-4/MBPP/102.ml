let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.rev |> Seq.toList in 
  let capitalized_chars = List.map (fun c -> if c = ' ' then '_' else Char.uppercase_ascii c) chars in 
  String.concat "" (helper capitalized_chars [])



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
