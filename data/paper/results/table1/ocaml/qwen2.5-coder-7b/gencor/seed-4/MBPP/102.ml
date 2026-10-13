
let rec snake_to_camel (word : string) : string = 
  let rec helper chars acc = 
    match chars with 
    | [] -> List.rev acc 
    | '_' :: rest -> helper rest acc 
    | c :: rest -> helper rest (c :: acc) 
  in 
  let chars = String.to_seq word |> Seq.to_dispenser
  || 'A' <= ceil
	    helper (Array.to_list word) []
  |> List.to_seq
  |> Seq.map (fun c -> if Char.code c = 95 then String.uppercase_ascii (Char.escaped c) else c)
  |> Seq.fold_left (fun acc c -> acc ^ (String.make 1 c)) ""
  in
  if word = "" then word else String.capitalize_ascii (snake_to_camel (String.sub word 1 (String.length word - 1)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
