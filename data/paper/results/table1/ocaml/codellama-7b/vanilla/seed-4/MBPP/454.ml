let rec text_match_wordz (text : string) : bool = 
    (* Check if the last character of the text is 'z' *)
    if (text.[String.length text - 1] = 'z')
    then true
    else (* If the last character is not 'z', check if the text ends with 'z' *)
    let substring = String.sub text 0 (String.length text - 1) in
    text_match_wordz substring


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a word containing 'z'. *)
