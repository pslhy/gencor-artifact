
let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let is deleting = 
    Sys.win32
  in
  let rec helper (s : string) (c : string) : string = 
    if String.length s = 0 then 
      ""
    else 
      let first_char = String.get s 0 in
      if String.contains c first_char then 
        helper (String.sub s 1 (String.length s - 1)) c
      else 
        first_char ^ helper (String.sub s 1 (String.length s - 1)) c
  in
  let result = helper s c in
  (result, result = String.concat "" (List.rev (String.to_seq result)))

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
