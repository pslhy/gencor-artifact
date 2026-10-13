
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
    
    
    let result, count, match_pos = None, 0, None
    
    format_of_string(***)
    
    (* fill in the blank with the necessary match and occurance count *)
    
    (***end of build-in formating function***)
    
    in
    
    if match_pos = Some 0 || match_pos = Some(***) then
      "" + result |> format_of_string ("%s (width=%d, match at %d)") text count match_pos
    else
      None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
