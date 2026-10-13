
let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | str2 ->
      let remainder : string = capital_words_spaces (String.sub str1 1 (String.length str1 - 1)) in
      let first_char, rest ::string = String.make 1 (char_of_int (Char.uppercase_ascii (Char.code char_of_int))) in
        String.concat "" [capital_words_spaces remainder; " "; capital_words_spaces remainder]
    | _ -> String.make 1 char_of_int

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
