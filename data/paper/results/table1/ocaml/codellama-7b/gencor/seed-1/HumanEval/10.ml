
let rec make_palindrome (string : string) : string =
  let is_palindrome (string : string) : bool =
    let rev_string = String.lowercase_ascii string |> String.uppercase_ascii in
    String.is_valid_utf_8 rev_string && String.is_valid_utf_8 string &&
    String.equal string rev_string
  in
  let (rev_prefix, suffix) = String.split_on_char '.' string |> fst in
  let prefix = String.lowercase_ascii rev_prefix |> String.uppercase_ascii in
  if is_palindrome suffix then
    string ^ String.map ~fst:(fun x -> x) ~snd:Char.chr (Array.length rev_prefix)
  else
    make_palindrome (prefix ^ suffix)
;;

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
