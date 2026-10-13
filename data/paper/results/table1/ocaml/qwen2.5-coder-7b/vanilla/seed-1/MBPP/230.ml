let rec replace_blank (str1 : string) (char : string) : string = 
  let rec helper (str2 : string) : string = 
    match str2 with
    | "" -> ""
    | s -> 
      let first_char = String.sub s 0 1 in
      let rest = String.sub s 1 (String.length s - 1) in
      if first_char = " " then char ^ (helper rest) 
      else first_char ^ (helper rest) 
  in helper str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
