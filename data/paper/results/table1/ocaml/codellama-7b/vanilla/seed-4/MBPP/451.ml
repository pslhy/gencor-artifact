let rec remove_whitespaces (text1 : string) : string = 
    let text2 = String.trim text1 in
    if text2 = "" then ""
    else
        let first_vowel = String.index text2 'a' in 
        let last_vowel = String.rindex text2 'a' in
        let left_str = String.sub text2 0 (first_vowel-1) in
        let right_str = String.sub text2 (last_vowel+1) (String.length text2-1) in
        left_str ^ remove_whitespaces right_str


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
