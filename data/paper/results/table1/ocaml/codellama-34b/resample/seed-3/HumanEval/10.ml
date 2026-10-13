(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec make_palindrome (string : string) : string =
    if string = "" then ""
    else
        let (len, palindrome_index) = longest_palindrome_suffix string 0 string.length in
        string ^ String.reverse string.[0..palindrome_index - len - 1]
and longest_palindrome_suffix (string : string) (left : int) (right : int) : int * int =
    if left >= right then (0, 0)
    else if string.[left] = string.[right - 1] then
        let (len, palindrome_index) = longest_palindrome_suffix string (left + 1) (right - 1) in
        (len + 2, palindrome_index)
    else (0, left)

