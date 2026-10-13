let rec make_palindrome (string : string) : string =
    let reverse = String.lowercase string in
    let prefix = String.sub reverse 0 (String.length reverse / 2) in
    let suffix = String.sub reverse (String.length reverse - 1) (String.length prefix) in
    if prefix = suffix then
        string
    else
        string ^ String.lowercase (String.sub reverse 0 1)


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
