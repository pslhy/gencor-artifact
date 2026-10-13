let rec snake_to_camel (word : string) : string = 
    let rec helper chars result = 
        match chars with
        | [] -> result
        | '_' :: rest -> 
            let (head :: rest2) = rest in
            helper rest2 (result ^ (String.capitalize_ascii head))
        | c :: rest -> helper rest (result ^ (String.make 1 c))
    in
    match word with
    | "" -> ""
    | _ -> helper (List.of_string word) ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
