let rec reverse_delete (s : string) (c : string) :  string * bool =
match c with
| [] -> (s, true)
| c' :: cs ->
   let rest_s = String.sub s 1 (String.length s - 1) in
   let c' = c'.[0] in
   let rest_cs = reverse_delete rest_s cs in
   let ans = if String.contains rest_s c' then rest_cs else (String.sub s 0 1 ^ rest_cs) in
   (ans, is_palindrome ans)
let is_palindrome (s : string) : bool =
s = String.rev s


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
