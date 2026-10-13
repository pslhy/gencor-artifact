let rec make_palindrome (string : string) : string =
  let length = String.length string in
  let rec loop i =
    if i >= length then string
    else if string.[i] = string.[length - i - 1] then loop (i + 1)
    else string ^ (String.sub string 0 (length - i)) ^ (String.sub string (length - i) i)
  in
  loop 0


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
