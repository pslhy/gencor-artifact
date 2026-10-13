let rec is_lower (string : string) : string = 
    (* base case: if string is empty return empty string *)
    if string = "" then "" 
    (* recursive case: check if the first letter of the string is lower case *)
    else if (List.nth string 0) < 'a' then string 
    (* find the index of the lower case letter in the alphabet *)
    else 
        let index = (List.nth string 0) - 'a' 
        (* find the lower case letter in the alphabet using the index *)
        let lower_case_letter = (List.nth "abcdefghijklmnopqrstuvwxyz" index)
        (* recurse the function for the rest of the string *)
        lower_case_letter ^ is_lower (List.nth string 1..(List.length string -1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
