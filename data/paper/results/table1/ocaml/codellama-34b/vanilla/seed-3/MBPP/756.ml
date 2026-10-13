let rec text_match_zero_one (text : string) : bool =
  if String.length text <= 1 then
    true
  else if text.[0] = 'a' && text.[1] = 'b' then
    text_match_zero_one (String.sub text 2 (String.length text - 2))
  else
    false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
