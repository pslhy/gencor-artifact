(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
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
        


(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:16: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let is_first_char = function 
    | true -> (word.[0], false) 
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
            | c -> String.init 1 ~f:(fun _ -> camel_case && c != '_' && Char.is_lower c ) word  
            ) word 
        

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:14: Unbound value "String.uncapitalize" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let is_first_char = function 
    | true -> (word.[0], false) 
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
            | c -> String.init 1 ~f:(fun _ -> camel_case && c != '_' && Char.is_lower c ) word  
            ) word 
        

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:14: Unbound value "String.uncapitalize" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let is_first_char = function 
    | true -> (word.[0], false) 
    | false -> 
        
        
        if String.length word > 0 && word.[0] = '_' then 
            (String.lowercase_ascii (String.tail word 1), false) 
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
                let word = String.lowercase_ascii (String.tail word 1) in 
                loop (word) 
            in 
            
        String.map_concat ~f:(function 
            | '_' -> loop word 
            | c -> String.init 1 ~f:(fun _ -> camel_case && c != '_' && Char.is_lower c ) word  
            ) word 
        

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:38: Unbound value "String.tail" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec snake_to_camel (word : string) : string = 
    let is_first_char = function 
    | true -> (word.[0], false) 
    | false -> 
        
        
        if String.length word > 0 && word.[0] = '_' then 
            (String.lowercase_ascii (String.sub word 1 (String.length word - 1)), false) 
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
                let word = String.lowercase_ascii (String.sub word 1 (String.length word - 1)) in 
                loop (word) 
            in 
            
        String.map_concat ~f:(function 
            | '_' -> loop word 
            | c -> String.init 1 ~f:(fun _ -> camel_case && c != '_' && Char.is_lower c ) word  
            ) word 
        

