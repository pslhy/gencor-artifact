let rec replace_blank (str1 : string) (char : string) : string =
  if str1 = "" then "" else
  match str1 with
  | ' ' :: tl -> replace_blank tl char
  | ch :: tl -> ch :: replace_blank tl char
  | _ -> failwith "Invalid input: input string must be made up of characters"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string. *)
