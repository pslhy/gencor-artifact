
let rec replace_specialchar (text : string) : string = 
    match text with 
    | "" -> ""
    | text -> 
        let char = text.[0] in 
        if List.mem char [':'; ' '; ','; '.'] then 
            ":"; 
        replace_specialchar (String.sub text 1 (String.length text - 1)) 
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
