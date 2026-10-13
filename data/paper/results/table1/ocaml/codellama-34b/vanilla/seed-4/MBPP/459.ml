let rec remove_uppercase (str1 : string) : string = 
    (* Declare and initialize substring with the first char *)
    let (substring, i) = 
        let char : char = String.get str1 0 in
        if Char.lowercase_ascii char = char then
            (Char.escaped char, 1)
        else
            ("", 1) in
    
    (* Loop through the rest of the string character by character *)
    while i < String.length str1 do
        let char : char = String.get str1 i in
        if Char.lowercase_ascii char = char then
            substring = substring ^ (Char.escaped char)
        else
            substring = substring ^ ""
    done;
    
    substring


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
