let rec make_palindrome (string : string) : string =
  if String.length string <= 1 then
    string
  else if is_palindrome (string ^ reverse_string (String.sub string 0 (String.length string - 1))) then
    string ^ reverse_string (String.sub string 0 (String.length string - 1))
  else
    make_palindrome (String.sub string 0 (String.length string - 1))

and is_palindrome (s : string) : bool =
  String.compare s (reverse_string s) = 0

and reverse_string (s : string) : string =
  let len = String.length s in
  let rec reverse_rec i acc =
    if i < 0 then
      acc
    else
      reverse_rec (i - 1) (String.get s i :: acc)
  in
  String.init len (reverse_rec (len - 1) [])


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
