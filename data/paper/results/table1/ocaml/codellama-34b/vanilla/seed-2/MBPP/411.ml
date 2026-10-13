let rec snake_to_camel (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let head = String.sub word 0 1 in
        let tail = String.sub word 1 (String.length word - 1) in
        if head = "_" then
            snake_to_camel tail
        else
            head ^ camel_case_of_string tail

and camel_case_of_string (word : string) : string =
    match word with
    | "" -> ""
    | _ ->
        let head = String.sub word 0 1 in
        let tail = String.sub word 1 (String.length word - 1) in
        if head = "_" then
            String.uppercase head ^ camel_case_of_string tail
        else
            head ^ camel_case_of_string tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert the given snake case string to camel case string. *)
