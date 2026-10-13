let rec replace_blank (str1 : string) (char : string) : string = 
    match String.contains str1 with
    | false -> ""
    | true -> 
        let str2 = String.trim str1 in 
        let str2 = String.map (fun x -> if x = ' ' then char else x) str2 in 
        let str2 = String.concat "" str2 in 
        str2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
