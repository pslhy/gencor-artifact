
let rec capital_words_spaces (str1 : string) : string =
    let str2 = String.lowercase_ascii str1 in
    let matches = String.split_on_char ' ' str2 in
    let capitalized = List.map (fun word -> String.capitalize_ascii word) matches in
    String.concat " " capitalized

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
