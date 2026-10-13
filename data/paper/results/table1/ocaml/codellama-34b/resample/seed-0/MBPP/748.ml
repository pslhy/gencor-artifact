(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
let rec capital_words_spaces (str1 : string) : string =
    match str1.[0] with
    | 'A'..'Z' -> " " ^ (String.make 1 str1.[0]) ^ " "
    | _ -> ""

