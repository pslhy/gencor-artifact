
let rec replace_char (str1 : string) (ch : string) (newch : string) : string = 
  let rec helper (s : string) (acc : string) : string = 
    if s = "" then 
      acc 
    else 
      let char, rest = String.split_on_char ch s in 
      helper rest (acc ^ newch ^ char) 
  in helper str1 ""

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
