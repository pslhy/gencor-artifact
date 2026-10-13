let rec reverse_delete (s : string) (c : string) :  string * bool =
  if s = "" then ("", false)
  else if List.mem (String.get s 0) c then
    let (r, p) = reverse_delete (String.sub s 1 (String.length s - 1)) c in
      if p then (r, true)
      else (r, false)
  else
    let (r, p) = reverse_delete (String.sub s 1 (String.length s - 1) c in
      (String.get s 0) :: r, p)
    if List.rev r = r then ("", true) else ("", false)


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
