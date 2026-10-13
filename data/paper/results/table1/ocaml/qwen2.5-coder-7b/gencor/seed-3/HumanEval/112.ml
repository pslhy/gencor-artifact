
let rec reverse_delete (s : string) (c : string) :  string * bool = 
    let rec helper (s : string) (c : string) : string = 
        if String.length s = 0 then ""
        else if String.index_opt s (String.get c 0) = Some 0 then helper (String.trim s) c
        else (String.get s 0) :: helper (String.trim (String.make 1 (String.get s 0) ^ (String.sub s 1 (String.length s - 1)))) c
    in let result = helper s c in (result, result = List.rev (String.to_seq result |> List.of_seq))

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
