(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
let rec replace_blank (str1 : string) (char : string) : string =
    let str2 = String.trim str1 in
    let spaces = String.length str2 - String.length str1 in
    let str3 = String.concat "" (List.init spaces (fun _ -> char)) in
    String.concat str3 str2

