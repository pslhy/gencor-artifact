let rec is_lower (string : string) : string =
  let len = String.length string in
  let rec convert i acc =
    if i = len then acc
    else convert (i+1) (acc ^ (String.make 1 (Char.lowercase_ascii string.[i])))
  in
  convert 0 ""


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
