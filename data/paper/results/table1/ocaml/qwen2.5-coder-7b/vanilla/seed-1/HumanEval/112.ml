let rec reverse_delete (s : string) (c : string) :  string * bool = 
  let rec check (c:char) str = 
    if String.length str = 0 then true 
    else if str.[0] = c then check c (String.sub str 1 (String.length str - 1)) 
    else check c (String.sub str 1 (String.length str - 1))
  in let rec del (s : string) (c : string) : string = 
    if String.length s = 0 then "" 
    else if s.[0] = s.[String.length s - 1] then del (String.sub s 1 (String.length s - 1)) c 
    else del (String.sub s 1 (String.length s - 2)) c 
  in let res = del s c in (res, check (res.[0]) res)


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
