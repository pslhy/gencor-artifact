let rec replace_spaces (text : string) : string =
  match text with
  | "" -> ""
  | x :: xs -> 
        if x = ' ' then ('_' :: (replace_spaces xs)) 
        else if x = '_' then (' ' :: (replace_spaces xs)) 
        else (x :: (replace_spaces xs))

let string_invert (text : string) : string =
  replace_spaces text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
