let rec snake_to_camel (word : string) : string = 
  let rec convert (word: string) (acc: string) : string = 
    match word with 
    | "" -> acc
    | "_"::xs -> convert xs (acc ^ (String.uppercase_ascii (List.hd xs)))
    | x::xs -> convert xs (acc ^ String.lowercase_ascii x)
  in convert (String.to_list word) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
