
let rec make_palindrome (string : string) : string =
    if string = "" then ""
    else
    let rev_string = String.sub string 0 1 ^ (make_palindrome (String.sub string 1 ((String.length string) - 1))) in
    let palindrome_postfix =
    let rec palindrome_postfix_aux string_aux =
        if string_aux = "" then ""
        else
        let postfix = String.sub string_aux 0 ((String.length string_aux) - 1) in
        let prefix = String.sub string 0 ((String.length postfix)) in
        if postfix = (String.sub rev_string 0 ((String.length postfix))) then postfix
        else palindrome_postfix_aux postfix
    in palindrome_postfix_aux rev_string
    in 
    let palindrome_prefix = String.sub rev_string 0 ((String.length string) - (String.length palindrome_postfix)) in
    string ^ (String.sub palindrome_prefix 0 ((String.length palindrome_prefix) - 1)) ^ (String.sub palindrome_prefix 1 ((String.length palindrome_prefix) - 1)) ^ (String.sub rev_string ((String.length rev_string) - (String.length palindrome_postfix)) ((String.length palindrome_postfix)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Find the shortest palindrome that begins with a supplied string. *)
(*     Algorithm idea is simple: *)
(*     - Find the longest postfix of supplied string that is a palindrome. *)
(*     - Append to the end of the string reverse of a string prefix that comes before the palindromic suffix. *)
(*     >>> make_palindrome "" *)
(*     "" *)
(*     >>> make_palindrome "cat" *)
(*     "catac" *)
(*     >>> make_palindrome "cata" *)
(*     "catac" *)
