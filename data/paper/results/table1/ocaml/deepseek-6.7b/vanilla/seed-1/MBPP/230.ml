let rec replace_blank (str1 : string) (char : string) : string =
  match str1 with
  | "" -> ""
  | s -> if (String.sub s 0 1) = " " then char ^ (replace_blank (String.sub s 1 (String.length s - 1)) char)
         else (String.sub s 0 1) ^ (replace_blank (String.sub s 1 (String.length s - 1)) char)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
