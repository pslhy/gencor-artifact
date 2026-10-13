let rec remove_whitespaces (text1 : string) : string =
  match text1 with
  | "" -> ""
  | text1 ->
     if String.contains text1 ' ' then
       remove_whitespaces (String.sub text1 1 (String.length text1 - 1))
     else
       String.make 1 (String.get text1 0) ^ remove_whitespaces (String.sub text1 1 (String.length text1 - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
