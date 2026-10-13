(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:100: Unbound value "len" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_uppercase (str1 : string) : string = 
    let rec helper (str2 : string) : string = 
        let rec find_uppercase_starti (i : int) : int = 
            if i >= String.length str2 || str2.[i] >= 'A' && str2.[i] <= 'Z' then i else find_uppercase_starti (i + 1) in
        let rec skip_uppercase i =
            if i >= String.length str2 || not (str2.[i] >= 'A' && str2.[i] <= 'Z') then 0 else skip_uppercase (i + 1) + 1
        in match find_uppercase_starti 0 with
        | len when len = String.length str2 -> str2
        | start -> String.sub str2 0 start ^ helper (String.sub str2 (start + skip_uppercase start) (String.length str2 - start - skip_uppercase start))
    in helper str1

