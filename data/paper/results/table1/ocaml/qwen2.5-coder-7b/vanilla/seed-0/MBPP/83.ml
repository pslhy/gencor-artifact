let rec get_Char (strr : string) : string = 
  let rec helper (s: string) (acc: int) : int = 
    match s with 
    | "" -> acc mod 26
    | _ -> helper (String.sub s 1 ((String.length s) - 1)) (acc + (int_of_char s.[0] - int_of_char 'a'))
  in
  String.make 1 (char_of_int ('a' + helper strr 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the character made by adding the ASCII value of all the characters of the given string modulo 26. *)
