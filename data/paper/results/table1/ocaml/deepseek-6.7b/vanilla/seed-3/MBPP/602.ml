let rec first_repeated_char (str1 : string) : string option =
  match str1 with
  | "" -> None
  | _ -> let c = String.get str1 0 in
         if String.contains_from str1 1 c then
           Some c
         else 
           first_repeated_char (String.sub str1 1 (String.length str1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
