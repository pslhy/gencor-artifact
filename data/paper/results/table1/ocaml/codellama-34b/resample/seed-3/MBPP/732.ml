(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to replace all occurrences of spaces, commas, or dots with a colon. *)
let rec replace_specialchar (text : string) : string =
  if(text = "") then
    text
  else if(text.[0] = ' ' || text.[0] = ',' || text.[0] = '.') then
    ':' ^ replace_specialchar (text.[1..((String.length text) - 2)])
  else
    text.[0] ^ replace_specialchar (text.[1..((String.length text) - 1)])

