let rec make_palindrome (string : string) : string = 
  let len = String.length string in
  let rec is_palindrome (s : string) (i : int) (j : int) : bool =
    if i >= j then true
    else if s.[i] = s.[j] then is_palindrome s (i + 1) (j - 1)
    else false
  in
  let rec longest_palindrome_prefix idx =
    if idx = 0 || is_palindrome string 0 (idx - 1) then idx
    else longest_palindrome_prefix (idx - 1)
  in
  let pal_len = longest_palindrome_prefix len in
  let prefix = String.sub string 0 (len - pal_len) in
  string ^ (String.rev prefix)


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
