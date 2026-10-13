let rec remove_all_spaces (text : string) : string =
    let is_space = function
        | ' ' | '\t' | '\r' | '\n' -> true
        | _ -> false
    in
    let rec loop (acc : string list) (text : string) : string =
        match text with
        | [] -> String.concat "" (List.rev acc)
        | h :: t ->
            if is_space h
            then loop (acc) t
            else loop (String.make 1 h :: acc) t
    in
    loop [] text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
