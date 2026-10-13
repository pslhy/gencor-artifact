let rec replace_blank (str1 : string) (char : string) : string =
    match str1 with
        | "" -> ""
        | str1 ->
            let index : int = String.index str1 ' ' in
            let sub_str1 : string = String.sub str1 0 index in
            let sub_str2 : string = String.sub str1 (index+1) (String.length str1 - index - 1) in
            replace_blank sub_str2 char ^ char ^ sub_str2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
