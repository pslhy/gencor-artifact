let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
    (*
     * Find the occurrence and position of the substrings within a string
     * Return None if there is no match
     * 
     * text - the string to search in
     * pattern - the substring to search for
     * 
     * return the substring, the occurance count, and the position of the substring if found
     *)
    
    
    let result, count, match_pos = helper text 0 [] in
    
    match result with
    | [] -> None
    | hd :: tl -> 
        let str, pos = hd in
        let count = count str in
        Some(str, pos, count)

and helper (text : string) ( count : int) (acc : (string * int) list) : 
    (string * int) list = 
	// Split the text into a list of words and iterate over each word
    let words = String.split_on_char ' ' text in
    let result = 
        List.fold_left (fun acc word -> 

            if String.match_substring pattern word at
            then (word, count) :: acc
            else match acc with 
                 | [] -> [] 
                 | (str, pos) :: tl -> (str, pos) :: (word, count+1) :: tl

        
        ) [] words in
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
