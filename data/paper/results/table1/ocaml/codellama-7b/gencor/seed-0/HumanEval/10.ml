
let rec make_palindrome (string : string) : string =
  if string = "" then ""
  else
    let postfix = string.[(String.length string) - 1..(String.length string) - 1] in
    if String.is_valid_utf_8 postfix && String.is_valid_utf_8 (String.sub string 0 (String.length string - (String.length postfix))) &&
      String.contains postfix (String.sub postfix 0 (String.length postfix) in_channel_length) then
        String.sub string 0 (String.length string - (String.length postfix)) ^ (String.sub postfix 0 (String.length postfix) in_channel_length)
    else make_palindrome (String.sub string 0 (String.length string - 1))

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
