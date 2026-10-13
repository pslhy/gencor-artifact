
let rec make_palindrome (string : string) : string =
  let len = String.length string in
  if len <= 1 then string
  else
  let rec helper prefix postfix =
    if prefix < 0 then
      ""
    else
      let possible_postfix = String.sub string prefix (len - prefix) in
      if possible_postfix = String.sub string 0 (String.length possible_postfix) then
        string ^ (String.sub string 0 (len - prefix))
      else
        helper (prefix - 1) (postfix + 1)
  in
  helper (len - 1) 0

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
