let rec remove_parenthesis (items : string list) : string = 
    let rec find_parenthese items found result = 
        match items with
        | [] -> (found, result)
        | x :: xs -> 
            if x = "(" && not found then (true, result)
            else if x = ")" && found then (false, result)
            else if found then (found, x :: result)
            else (found, x :: result) in 
    let (found, result) = find_parenthese items false [] in 
    String.concat "" (List.rev result)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove the parenthesis and what is inbetween them from a string. *)
