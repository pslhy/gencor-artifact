let rec remove_whitespaces (text1 : string) : string =
  match text1 with
  | "" -> ""
  | s -> if (String.sub s 0 1) = " " then remove_whitespaces (String.sub s 1 (String.length s - 1)) 
         else (String.sub s 0 1) ^ remove_whitespaces (String.sub s 1 (String.length s - 1));;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
