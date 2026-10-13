let rec remove_whitespaces (text1 : string) : string = 
    let text2 = String.trim text1 in
    if text2 = "" then ""
    else
        let chr = String.get text2 0 in
        if Char.isWhite chr then remove_whitespaces (String.sub text2 1 ((String.length text2) - 1))
        else text2


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
