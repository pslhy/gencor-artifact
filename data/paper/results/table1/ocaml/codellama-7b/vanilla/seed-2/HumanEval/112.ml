let rec reverse_delete (s : string) (c : string) :  string * bool =
    let delete_char (ch : char) : bool =
        List.mem ch c
    in
    let filtered_s = String.filter (fun ch -> not (delete_char ch)) s
    in
    let is_palindrome (str : string) : bool =
        let length = String.length str
        in
        let rec check (i : int) (j : int) : bool =
            if i = length || j = length then
                true
            else
                (String.get str i = String.get str j) && check (i + 1) (j + 1)
        in
        check 0 0
    in
    (filtered_s, is_palindrome filtered_s)


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
