let rec capital_words_spaces (str1 : string) : string =
  match str1 with
  | "" -> ""
  | str2 ->
      let remainder : string = capital_words_spaces (String.sub str1 1 (String.length str1 - 1)) in
      let first_char, rest : char * string = String.get str1 0, String.sub str1 1 (String.length str1 - 1) in
      let is_capital : bool = 'A' <= first_char && first_char <= 'Z' in
      if is_capital then
        String.make 1 first_char ^ " " ^ remainder
      else
        first_char ^ remainder


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to put spaces between words starting with capital letters in a given string. *)
