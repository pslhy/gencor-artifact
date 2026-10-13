let rec make_palindrome (string : string) : string =
  if string = "" then ""
  else
    let postfix = longest_postfix_of_palindrome string in
    let prefix = string_prefix_before_palindromic_suffix string postfix in
    string ^ (String.rev prefix) ^ postfix
and longest_postfix_of_palindrome (string : string) : string =
  let rec loop (i : int) : string =
    if i = String.length string then ""
    else
      let substr = String.sub string i (String.length string - i) in
      if is_palindrome substr then substr
      else loop (i + 1)
  in loop 0
and string_prefix_before_palindromic_suffix (string : string) (suffix : string) : string =
  let rec loop (i : int) : string =
    if i = String.length string then ""
    else
      let substr = String.sub string 0 i in
      if is_palindrome (substring suffix substr) then substr
      else loop (i + 1)
  in loop 0
and substring (a : string) (b : string) : string =
  if String.length a < String.length b then ""
  else String.sub b 0 (String.length a)
and is_palindrome (string : string) : bool =
  string = (String.rev string)


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
