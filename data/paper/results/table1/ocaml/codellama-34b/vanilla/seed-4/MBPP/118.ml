let rec string_to_list (string : string) : string list = 
    let open String in
    if string = "" then 
        []
    else 
        let index = String.index_of " " string in
        if index = -1 then 
            [string]
        else 
            string.[0 .. index - 1] :: string_to_list string.[index + 1 ..] 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a string to a list of strings split on the space character. *)
