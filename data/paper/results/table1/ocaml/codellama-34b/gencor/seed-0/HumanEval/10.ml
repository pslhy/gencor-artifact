
let rec make_palindrome (string : string) : string =
    let reverse = String.lowercase_ascii string in
    let longest_palindrome =
        Array.fold_left (fun (s, len) (c, i) ->
            if s.[i] = s.[String.length s - i - 1] then (s, len + 1)
        else (string, 0))
        in
    let start_of_palindrome = String.length string - longest_palindrome in
    let suffix = String.sub string start_of_palindrome (String.length string) in
    let prefix = String.sub string 0 start_of_palindrome in
    suffix ^ (String.make (String.length suffix) prefix)

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
