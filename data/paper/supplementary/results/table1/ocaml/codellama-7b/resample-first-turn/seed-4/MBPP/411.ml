let rec snake_to_camel (word : string) : string = 
    let (first, rest) =
        try
            (List.hd (String.explode word), String.implode (List.tl (String.explode word)))
        with
            Failure "list is empty" -> ("", "")
    in
    first ^ String.capitalize_ascii rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
