let rec replace_blank (str1 : string) (char : string) : string =
    if str1.[length] == ' ' then
        let (str2 : string) = str1.[0..(length-1)] ^ char ^ str1.[(length + 1)..(length - 1)] in
        replace_blank str2 char
    else
        str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
