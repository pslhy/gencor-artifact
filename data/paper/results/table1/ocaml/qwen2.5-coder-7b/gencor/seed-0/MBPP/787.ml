
let rec text_match_three (text : string) : bool = 
  let open_re = String.sub text 0 2 in
  if open_re = "ab" then
    let third_char = String.get text 2 in
    third_char = 'b'
  else
    false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
