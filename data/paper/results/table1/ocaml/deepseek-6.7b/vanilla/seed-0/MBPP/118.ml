let rec string_to_list (string : string) : string list =
    if string = "" then []
    else
        let space_index = try Some (String.index string ' ') with Not_found -> None in
        match space_index with
        | None -> [string]
        | Some index ->
            let first_part = String.sub string 0 index in
            let rest_string = String.sub string (index+1) (String.length string - index - 1) in
            first_part :: string_to_list rest_string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
