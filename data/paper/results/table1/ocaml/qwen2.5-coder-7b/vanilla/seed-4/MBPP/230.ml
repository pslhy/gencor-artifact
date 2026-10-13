let rec replace_blank (str1 : string) (char : string) : string = 
  let rec replace_blanks (s1 : string) (s2 : string) : string =
    match s1 with
    | "" -> s2
    | _  -> replace_blanks (String.sub s1 1 ((String.length s1) - 1)) (s2^char^(String.sub s1 0 1))
  in
  replace_blanks str1 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
