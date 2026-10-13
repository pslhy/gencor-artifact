let rec reverse_delete (s : string) (c : string) :  string * bool = 
    let rec helper (s : string) (c : string) : string = 
        if String.length s = 0 then ""
        else if String.index_opt s (String.get c 0) = Some 0 then helper (String.substring s 1 (String.length s - 1)) c
        else (String.get s 0) :: helper (String.substring s 1 (String.length s - 1)) c
    in
    let result = helper s c in
    let reversed = String.concat "" (List.rev (String.to_list result)) in
    (result, result = reversed)

(* Test cases *)
(* print_endline (fst (reverse_delete "abcde" "ae")) ^ " " ^ string_of_bool (snd (reverse_delete "abcde" "ae")) *)
(* print_endline (fst (reverse_delete "abcdef" "b")) ^ " " ^ string_of_bool (snd (reverse_delete "abcdef" "b")) *)
(* print_endline (fst (reverse_delete "abcdedcba" "ab")) ^ " " ^ string_of_bool (snd (reverse_delete "abcdedcba" "ab")) *)


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
