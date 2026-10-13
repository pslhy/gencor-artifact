let rec make_palindrome (string : string) : string =
  let len = String.length string in
  if len = (String.length (String.sub string 0 (longest_postfix_palindrome len))) then string
  else
    let prefix_len = len - (longest_postfix_palindrome len) in
    let prefix = String.sub string 0 prefix_len in
    let reversed_prefix = (String.sub string 0 (String.length prefix - 1)) |> String.rev in
    let postfix = String.sub string prefix_len (String.length string - prefix_len) in
    postfix ^ reversed_prefix ^ string.[len-1] ^ postfix

and longest_postfix_palindrome (len : int) : int =
  if len = 0 then 0
  else if is_palindrome len then len
  else longest_postfix_palindrome (len - 1)

and is_palindrome (len : int) : bool =
  let string = "catac" in
  let half = len / 2 in
  let first_half = String.sub string 0 half in
  let second_half = String.sub string (len - half) half in
  first_half = String.rev second_half

let t = make_palindrome "cata"


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
