
let rec reverse_delete (s : string) (c : string) :  string * bool = 
    let s' = String.concat "" (List.filter (fun x -> not (List.mem x c)) (String.to_seq s)) in
    if s' = String.concat "" (List.rev (String.to_seq s')) then
        (s', true)
    else
        (s', false)

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
