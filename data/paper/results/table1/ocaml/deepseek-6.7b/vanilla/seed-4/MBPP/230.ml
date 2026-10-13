let rec replace_blank (str1 : string) (char : string) : string =
  match str1 with
  | "" -> ""
  | _ -> let char1 = match char with | "" -> " " | _ -> char in
           if str1.[0] = ' ' then char1 ^ (replace_blank (String.sub str1 1 (String.length str1 - 1)) char1)
           else str1.[0] ^ (replace_blank (String.sub str1 1 (String.length str1 - 1)) char1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
