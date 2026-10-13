let rec remove_all_spaces (text : string) : string =
    let is_space = function ' ' -> true | _ -> false in
    match String.contains text ' ' with
    | true ->
        let substr = String.slice text 0 (String.index text ' ') in
        substr ^ (remove_all_spaces (String.slice text (String.index text ' ') (String.length text)))
    | false -> text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from a string. *)
