let rec replace_spaces (text : string) : string =
  if String.length text = 0 then
    ""
  else if text.[0] = ' ' then
    "_" ^ replace_spaces (String.sub text 1 (String.length text - 1))
  else if text.[0] = '_' then
    " " ^ replace_spaces (String.sub text 1 (String.length text - 1))
  else
    text.[0] ^ replace_spaces (String.sub text 1 (String.length text - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace whitespaces with an underscore and vice versa in a given string. *)
