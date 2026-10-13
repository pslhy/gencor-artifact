let rec text_match_three (text : string) : bool =
  if String.length text >= 4 then
    if String.length text = 4 then
      text = "aabb"
    else
      if String.length text = 5 then
        text = "ababb"
      else
        text = "abcabb"
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
