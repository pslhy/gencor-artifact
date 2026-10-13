
let rec reverse_delete (s : string) (c : string) :  string * bool =
    let rec check_palin s =
       s = String.sub s 0 1 ^ check_palin (String.sub s 1 (String.length s - 1)) in
    let rec delete_char (s: string) (c: string) (i: int): string =
        if i = String.length s
        then s
        else if String.contains c (String.sub s i 1)
        then delete_char s c (i+1)
        else String.sub s 0 i ^ String.sub s (i+1) (String.length s - i - 1) in
    (delete_char s c 0, s = check_palin (delete_char s c 0))


let () =
    Printf.printf "%s\n" (String.sub (fst(reverse_delete "abcde" "ae")) 0 (String.length(fst(reverse_delete "abcde" "ae")) - 1));(*bcd*)
    Printf.printf "%s\n" (String.sub (fst(reverse_delete "abcdef" "b")) 0 (String.length(fst(reverse_delete "abcdef" "b")) - 1));(*acdef*)
    Printf.printf "%s\n" (String.sub (fst(reverse_delete "abcdedcba" "ab")) 0 (String.length(fst(reverse_delete "abcdedcba" "ab")) - 1)); (*cdedc*)
    assert(not (snd (reverse_delete "abcde" "ae")));
    assert(not (snd (reverse_delete "abcdef" "b")));
    assert(snd (reverse_delete "abcdedcba" "ab"))

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
