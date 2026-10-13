
let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  if str1 = "" then "" else
  if str1 = ch then newch ^ replace_char ch newch str1
                    ^ ch else
    replace_char ch newch str1 ^ ch in
   replace_char string_of_int string_of_int

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
