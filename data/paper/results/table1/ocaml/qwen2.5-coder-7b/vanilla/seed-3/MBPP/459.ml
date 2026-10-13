let rec remove_uppercase (str1 : string) : string = 
    let rec helper (str2 : string) : string = 
        let rec find_uppercase_starti (i : int) : int = 
            if i >= String.length str2 || str2.[i] >= 'A' && str2.[i] <= 'Z' then i else find_uppercase_starti (i + 1) in
        let rec skip_uppercase i len =
            if i + len >= String.length str2 || not (str2.[i + len] >= 'A' && str2.[i + len] <= 'Z') then len else skip_uppercase (i + 1) (len + 1)
        in match find_uppercase_starti 0 with
        | len when len = String.length str2 -> str2
        | start -> String.sub str2 0 start ^ helper (String.sub str2 (start + skip_uppercase start len) (String.length str2 - start - skip_uppercase start len))
    in helper str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
