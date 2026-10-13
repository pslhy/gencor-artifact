let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  match str1 with
  | "" -> ""
  | s -> if (String.sub s 0 1) = ch then
             newch ^ (replace_char (String.sub s 1 (String.length s - 1)) ch newch) 
         else
             (String.sub s 0 1) ^ (replace_char (String.sub s 1 (String.length s - 1)) ch newch)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
