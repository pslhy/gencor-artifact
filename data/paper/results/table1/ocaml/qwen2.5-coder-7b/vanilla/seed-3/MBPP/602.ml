let rec first_repeated_char (str1 : string) : string option = 
 let rec traversal (seen : char list) (str : string) : string option = 
  match str with 
  | "" -> None 
  | ch :: rest -> 
     if List.mem ch seen then Some ch else traversal (ch :: seen) rest
 in traversal [] str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
