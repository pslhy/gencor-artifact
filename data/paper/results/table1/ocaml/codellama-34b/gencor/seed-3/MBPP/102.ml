
let rec snake_to_camel (word : string) : string =
  if word = "" then ""
  else
    let (h, t) = (String.get word 0, String.sub word 1 (String.length word - 1)) in
    if h = '_' then snake_to_camel t
    else String.make 1 (Char.lowercase_ascii h) ^ snake_to_camel t

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a snake case string to camel case string. *)
