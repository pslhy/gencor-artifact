
let rec remove_Occ (s : string) (ch : string) : string =
    let rec aux (s : string) (acc : string) : string =
        if s = "" then
            acc
        else if s.[0] = ch.
            (aux (String.sub s 1 (String.length s -2) (acc ^ String.sub s 1 (String.length s -1)))
        aux s acc
    aux s ""

remove_Occ "abc" "a"

remove_Occ "abcba" "a"

remove_Occ "abc" "c"

remove_Occ "abcba" "c"

remove_Occ "abc" "b"

remove_Occ "abcba" "b"

remove_Occ "abc" "d"

remove_Occ "abcba" "d"

remove_Occ "" "a"

remove_Occ "" "b"

remove_Occ "" "c"

remove_Occ "" "d"

remove_Occ "a" "a"

remove_Occ "b" "a"

remove_Occ "c" "a"

remove_Occ "d" "a"

remove_Occ "a" "d"

remove_Occ "b" "d"

remove_Occ "c" "d"

remove_Occ "d" "d"

remove_Occ "aa" "a"

remove_Occ "ab" "a"

remove_Occ "ac" "a"

remove_Occ "ad" "a"

remove_Occ "ba" "a"

remove_Occ "bb" "a"

remove_Occ "bc" "a"

remove_Occ "bd" "a"

remove_Occ "ca" "a"

remove_Occ "cb" "a"

remove_Occ "cc" "a"

remove_Occ "cd" "a"

remove_Occ "da" "a"

remove_Occ "db" "a"

remove_Occ "dc" "a"

remove_Occ "dd" "a"

remove_Occ "aa" "d"

remove_Occ "ab" "d"

remove_Occ "ac" "d"

remove_Occ "ad" "d"

remove_Occ "ba" "d"

remove_Occ "bb" "d"

remove_Occ "bc" "d"

remove_Occ "bd" "d"

remove_Occ "ca" "d"

remove_Occ "cb" "d"

remove_Occ "cc" "d"

remove_Occ "cd" "d"

remove_Occ "da" "d"

remove_Occ "db" "d"

remove_Occ "dc" "d"

remove_Occ "dd" "d"

remove_Occ "aa" "c"

remove_Occ "ab" "c"

remove_Occ "ac" "c"

remove_Occ "ad" "c"

remove_Occ "ba" "c"

remove_Occ "bb" "c"

remove_Occ "bc" "c"

remove_Occ "bd" "c"

remove_Occ "ca" "c"

remove_Occ "cb" "c"

remove_Occ "cc" "c"

remove_Occ "cd" "c"

remove_Occ "da" "c"

remove_Occ "db" "c"

remove_Occ "dc" "c"

remove_Occ "dd" "c"

remove_Occ "aa" "b"

remove_Occ "ab" "b"

remove_Occ "ac" "b"

remove_Occ "ad" "b"

remove_Occ "ba" "b"

remove_Occ "bb" "b"

remove_Occ "bc" "b"

remove_Occ "bd" "b"

remove_Occ "ca" "b"

remove_Occ "cb" "b"

remove_Occ "cc" "b"

remove_Occ "cd" "b"

remove_Occ "da" "b"

remove_Occ "db" "b"

remove_Occ "dc" "b"

remove_Occ "dd" "b"

remove_Occ "aa" "a"

remove_Occ "ab" "a"

remove_Occ "ac" "a"

remove_Occ "ad" "a"

remove_Occ "ba" "a"

remove_Occ "bb" "a"

remove_Occ "bc" "a"

remove_Occ "bd" "a"

remove_Occ "ca" "a"

remove_Occ "cb" "a"

remove_Occ "cc" "a"

remove_Occ "cd" "a"

remove_Occ "da" "a"

remove_Occ "db" "a"

remove_Occ "dc" "a"

remove_Occ "dd" "a"

remove_Occ "aa" "d"

remove_Occ "ab" "d"

remove_Occ "ac" "d"

remove_Occ "ad" "d"

remove_Occ "ba" "d"

remove_Occ "bb" "d"

remove_Occ "bc" "d"

remove_Occ "bd" "d"

remove_Occ "ca" "d"

remove_Occ "cb" "d"

remove_Occ "cc" "d"

remove_Occ "cd" "d"

remove_Occ

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
