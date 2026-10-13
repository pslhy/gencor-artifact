let rec reverse_delete (s : string) (c : string) :  string * bool =
  let rec remove_chars s c i =
    if i = String.length s then s
    else if String.contains c (String.get s i) then remove_chars s c (i+1)
    else String.concat "" [String.sub s 0 i; String.sub s (i+1) (String.length s - i - 1)]
  in
  let rec is_palindrome s i j =
    if i >= j then true
    else if String.get s i = String.get s j then is_palindrome s (i+1) (j-1)
    else false
  in
  let s = remove_chars s c 0 in
  (s, is_palindrome s 0 (String.length s - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Task *)
(*     We are given two strings s and c, you have to deleted all the characters in s that are equal to any character in c *)
(*     then check if the result string is palindrome. *)
(*     A string is called palindrome if it reads the same backward as forward. *)
(*     You should return a tuple containing the result string and true/false for the check. *)
(*     Example *)
(*     >>> reverse_delete "abcde" "ae" *)
(*     ("bcd", false) *)
(*     >>> reverse_delete "abcdef" "b" *)
(*     ("acdef", false) *)
(*     >>> reverse_delete "abcdedcba" "ab" *)
(*     ("cdedc", true) *)
