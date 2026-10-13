let rec make_palindrome (string : string) : string =
  let palindrome = build_palindrome 0 (String.length string) in
  let rev_prefix = String.sub (string, 0, String.length palindrome - 1) in
  palindrome ^ (String.rev rev_prefix)

and build_palindrome (i : int) (j : int) : string =
  if i >= j then "" else
    let c = string.[i] in
    let palindrome = build_palindrome (i + 1) j in
    if (String.contains palindrome c) && (String.contains palindrome (String.uppercase_ascii c)) then palindrome else c ^ palindrome
in
make_palindrome


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
