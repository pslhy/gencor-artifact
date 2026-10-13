let rec get_Char (strr : string) : string = 
    (* base case: If the string is empty, return 0 *)
    if (<:strr:> = "") then
        0
    else 
        (* get the UTF-8 code for the first character of the string *)
        let code = string_to_code(<:strr:>[0]) in
        (* add the ASCII value of the first character to the result of character for the rest of the string *)
        code + get_Char strr.[1..(string_length strr - 1)]);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
