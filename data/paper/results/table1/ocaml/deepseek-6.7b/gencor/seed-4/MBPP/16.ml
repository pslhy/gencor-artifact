
let rec text_lowercase_underscore (text : string) : bool =
  let len = String.length text in
  if len = 0 then true
  else if Char.lowercase_ascii text.[0] <> text.[0] 
       || (text.[0] <> '_' && len > 1 && Char.lowercase_ascii text.[1] <> text.[1])
       || (text.[0] = '_' && len <= 1)
  then false
  else text_lowercase_underscore (String.sub text 1 (len - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
