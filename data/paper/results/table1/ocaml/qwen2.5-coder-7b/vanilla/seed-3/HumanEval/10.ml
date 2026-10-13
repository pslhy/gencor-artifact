let rec make_palindrome (string : string) : string = 
  let len = String.length string in
  let is_palindrome prefix = 
    prefix = (String.sub prefix 0 (String.length prefix |> fun x -> x / 2) |> 
               String.rev |> 
               String.sub prefix 0 (String.length prefix |> fun x -> x / 2)) in
  let rec find_longest_palindrome_prefix i = 
    if i < 0 then "" else 
      let prefix = String.sub string 0 (i + 1) in
      if is_palindrome prefix then prefix else find_longest_palindrome_prefix (i - 1) in
  let palindrome_prefix = find_longest_palindrome_prefix (len - 1) in
  let prefix_to_reverse = String.sub string (String.length palindrome_prefix) (len - String.length palindrome_prefix) in
  string ^ (String.rev prefix_to_reverse)

(* Test cases *)
let _ = assert (make_palindrome "" = "")
let _ = assert (make_palindrome "cat" = "catac")
let _ = assert (make_palindrome "cata" = "catac")


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
