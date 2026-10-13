let rec replace_spaces (string : string) : string = 
  let rec helper (chars : char list) : string = 
    match chars with
    | [] -> ""
    | ' ' :: rest -> "%20" ^ helper rest
    | c :: rest -> string_of_char c ^ helper rest
  in helper (String.to_list string)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
