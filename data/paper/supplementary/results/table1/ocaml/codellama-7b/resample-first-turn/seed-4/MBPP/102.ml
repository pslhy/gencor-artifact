let rec snake_to_camel (word : string) : string = 
    let is_first_char = function 
    | true -> (Str.(word.[0]), false) 
    | false -> 
        
        
        if String.length word > 0 && word.[0] = '_' then 
            (String.uncapitalize (String.tail word 1), false) 
        else 
            (String.capitalize word, false) 
        in 
        
    let (word, camel_case) = is_first_char true in 
    if String.length word = 0 then "" else 
        let rec loop (word : string) : string * bool = 
            let (word, camel_case) = is_first_char camel_case in 
            if String.length word = 0 then 
                (word, camel_case) 
            else 
                let word = String.uncapitalize (String.tail word 1) in 
                loop (word) 
            in 
            
        String.map_concat ~f:(function 
            | '_' -> loop word 
            | c -> String.init 1 ~f:(fun _ -> camel_case && c != '_' && char_is_lower c ) word  
            ) word 
        



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
