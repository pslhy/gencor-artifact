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
    let reverse (s : string) : string = 
        let len = String.length s in
        if len = 0 then "" else s.[len - 1] ^ (reverse (String.sub s 0 (len - 1)))
    in
    let remove_duplicates (s : string) : string = 
        let rec helper s acc = 
            match s with
            | [] -> acc
            | h :: t -> if List.mem h acc then helper t acc
                else helper t (h :: acc)
        in
        helper (String.split_on_char c) []
    in
    let is_palindrome (s : string) : bool = 
        s = reverse s
    in
    let deleted_string = remove_duplicates s in
    let result = reverse deleted_string in
    (result, is_palindrome result)

