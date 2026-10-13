let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ -> let add_space = if (String.uppercase_ascii (String.sub str1 0 1) = String.sub str1 0 1) then " " ^ capital_words_spaces (String.sub str1 1 (String.length str1 - 1))
                            else capital_words_spaces (String.sub str1 1 (String.length str1 - 1))
                in
        String.sub str1 0 1 ^ add_space


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
