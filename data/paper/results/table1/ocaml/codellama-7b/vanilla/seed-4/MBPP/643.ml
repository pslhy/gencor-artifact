let rec text_match_wordz_middle (text : string) : bool = 
    (* Check if the current character is 'z' *)
    let rec current_char_is_char (text : string) : bool =
        
        
        if current_char_is_char (text) then 
            (* Check if the current character is the last character 
            in the string *)
            let rec current_char_is_last (text : string) : bool = 
                
                
                if current_char_is_last (text) then 
                    (* Check if the current character is the first 
                    character in the string *)
                    let rec current_char_is_first (text : string) : bool =
                        
                        
                        if current_char_is_first (text) then 
                            (* Check if the current character is 'z' *)
                            let rec current_char_is_z (text : string) : bool =
                                
                                
                                if current_char_is_z (text) then
                                    true
                                else
                                    false
                             in
                            current_char_is_z (text)
                        else
                            false
                     in
                    current_char_is_first (text)
                else
                    false
            in
            current_char_is_last (text)
        else
            false
     in
    current_char_is_char (text)
 in
text_match_wordz_middle "wordz" ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
