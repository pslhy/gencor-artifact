
let rec remove_whitespaces (text1 : string) : string =
  if(text1 = "") then ""
  else if (text1.[0] = ' ') then remove_whitespaces(text1.[1..(String.length(text1)-1)])
  else text1.[0] ^ remove_whitespaces(text1.[1..(String.length(text1)-1)])

let rec remove_whitespace(text2: string) =
    if(text2.[""]) then ""
    else if (text2.[0] = ' ') then remove_whitespace(text2.[1..(String.length(text2)-1)])
    else text2.[0] ^ remove_whitespace(text2.[1..(String.length(text2)-1)])

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove all whitespaces from the given string. *)
