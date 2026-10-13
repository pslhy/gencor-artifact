(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec reverse_delete (s : string) (c : string) :  string * bool = 
    let should_delete (c1 : char) = 
    (Str.(find_first_char (fun c2 -> c1 = c2) c) <> None) in 
    let filter_char c1 = 
    if should_delete c1 then "" else String.make 1 c1 in 
    let filtered_s = String.map filter_char s in 
    let is_palindrome = 
    filtered_s = String.rev filtered_s in 
    (filtered_s, is_palindrome)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:6: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_delete (s : string) (c : string) :  string * bool = 
    let should_delete (c1 : char) = 
    Char.(c1 = c) in 
    let filter_char c1 = 
    if should_delete c1 then "" else String.make 1 c1 in 
    let filtered_s = String.map filter_char s in 
    let is_palindrome = 
    filtered_s = String.rev filtered_s in 
    (filtered_s, is_palindrome)


