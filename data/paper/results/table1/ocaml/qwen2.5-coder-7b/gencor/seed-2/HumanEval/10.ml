
let rec make_palindrome (string : string) : string = 
    let length = String.length in
    let is_palindrome s =
        String.equal s (String.concat "" (List.rev (String.to_seq s))) in
    let rec find_longest_palindrome idx =
        if idx = 0 || is_palindrome (String.sub string 0 idx) then idx else find_longest_palindrome (idx - 1) in
    let prefix_length = find_longest_palindrome (length string) in
    let prefix = String.sub string 0 prefix_length in
    let suffix = String.sub string prefix_length (length string - prefix_length) in
    string ^ (String.concat "" (List.rev (String.to_seq suffix)))

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
