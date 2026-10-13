let rec extract_values (text : string) : string list = 
  let rec extract acc chars = 
    match chars with
    | [] -> List.rev acc
    | '"' :: rest -> extract [] rest
    | '\\' :: '\\' :: rest -> extract (String.concat "" acc ^ "\\\\") rest
    | '\\' :: 'n' :: rest -> extract (String.concat "" acc ^ "\\n") rest
    | '\\' :: 'r' :: rest -> extract (String.concat "" acc ^ "\\r") rest
    | '\\' :: '"' :: rest -> extract (String.concat "" acc ^ "\\\"") rest
    | '\\' :: 'b' :: rest -> extract (String.concat "" acc ^ "\\b") rest
    | '\\' :: 'f' :: rest -> extract (String.concat "" acc ^ "\\f") rest
    | '\\' :: x :: rest -> extract (String.concat "" acc ^ "\\" ^ (String.make 1 x)) rest
    | x :: rest -> 
        (match acc with
         | [] -> extract [(String.make 1 x)] rest
         | _ -> extract (List.rev_append acc [(String.make 1 x)]) rest)
  in
  extract [] (String.to_list text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
