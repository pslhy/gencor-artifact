let rec text_starta_endb (text : string) : bool = 
  let len = String.length text in
  if len < 2 then
    false
  else
    match text.[0], text.[len - 1] with
    | 'a', 'b' -> true
    | _ -> false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by anything, ending in 'b'. *)
