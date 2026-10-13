let rec replace_blank (str1 : string) (char : string) : string = 
  let rec helper (s : string) (idx : int) : string = 
    if idx >= String.length s then s
    else if s.[idx] = ' ' then helper (String.sub s 0 idx ^ char ^ String.sub s (idx + 1) ((String.length s) - (idx + 1))) (idx + String.length char)
    else helper s (idx + 1)
  in
  helper str1 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
