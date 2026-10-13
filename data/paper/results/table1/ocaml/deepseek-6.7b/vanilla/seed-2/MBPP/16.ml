let rec text_lowercase_underscore (text : string) : bool =
  let len = String.length text in
  if len = 0 then
    true
  else if text.[0] = '_' then
    false
  else if text.[len - 1] = '_' then
    false
  else if text.[0] < 'a' || text.[0] > 'z' then
    false
  else if text.[len - 1] < 'a' || text.[len - 1] > 'z' then
    false
  else if text.[0] = text.[len - 1] then
    false
  else 
    text_lowercase_underscore (String.sub text 1 (len - 2))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
