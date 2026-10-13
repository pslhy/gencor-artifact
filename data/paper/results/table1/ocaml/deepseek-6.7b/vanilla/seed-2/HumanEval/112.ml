let rec reverse_delete (s : string) (c : string) :  string * bool =
  let rec helper acc s c i =
    if i < String.length s then
      if String.contains c (String.get s i) then helper acc s c (i + 1)
      else helper (String.get s i ^ acc) s c (i + 1)
    else acc
  and is_palindrome str =
    let len = String.length str in
    let rec loop i =
      i >= len || (String.get str i = String.get str (len - i - 1) && loop (i + 1))
    in loop 0
  in
  let result = helper "" s c 0 in
  (result, is_palindrome result)


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
