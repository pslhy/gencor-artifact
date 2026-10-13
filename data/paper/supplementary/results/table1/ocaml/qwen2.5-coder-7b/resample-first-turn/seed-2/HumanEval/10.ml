let rec make_palindrome (string : string) : string = 
    let length = String.length in
    let is_palindrome s =
        String.equal s (String.rev s)
    in
    let rec find_longest_palindrome_suffix index =
        if index = -1 || is_palindrome (String.sub string 0 (index + 1)) then
            index
        else
            find_longest_palindrome_suffix (index - 1)
    in
    let palindromic_index = find_longest_palindrome_suffix (length - 1) in
    if palindromic_index = length - 1 then
        string
    else
        string ^ (String.sub string 0 (palindromic_index + 1) |> String.rev)


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
