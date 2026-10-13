let rec remove_uppercase (str1 : string) : string =
    if str1 = "" then ""
    else if String.length str1 <= 1 then str1
    else
    let rec find_index (str : string) (index : int) : int =
        if index = String.length str then
            -1
        else if Char.uppercase_ascii str.[index] = str.[index] then
            index
        else find_index str (index + 1) in
    let rec find_substr_end (str : string) (start_index : int) : int =
        if str = "" || start_index = String.length str then
            start_index
        else if Char.uppercase_ascii str.[start_index] = str.[start_index] then
            find_substr_end str (start_index + 1)
        else start_index in
    let uppercase_begin = find_index str1 0 in
    let uppercase_end = find_substr_end str1 uppercase_begin in
    if uppercase_begin = -1 || uppercase_begin = uppercase_end then
        str1
    else
        String.sub str1 0 uppercase_begin ^ remove_uppercase (String.sub str1 uppercase_end (String.length str1 - uppercase_end))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
