let rec count_char_position (str1 : string) : int =
    let alphabet = "abcdefghijklmnopqrstuvwxyz" in
    let char = String.get str1 (String.length str1 - 1) in
    let idx = String.index alphabet (Char.lowercase_ascii char) in
    let left = String.sub str1 0 (idx - 1) in
    let right = String.sub str1 (idx + 1) (String.length str1 - idx - 1) in
    if String.length left + String.length right = 0 then
        0
    else
        1 + count_char_position (left ^ right)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive). *)
