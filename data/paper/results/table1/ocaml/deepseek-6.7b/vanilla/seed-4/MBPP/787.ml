let rec text_match_three (text : string) : bool =
  let len = String.length text in
  if len < 4 then false
  else if text.[0] = 'a' then
    let rec check_b pos =
      if pos = len then true
      else if text.[pos] = 'b' then check_b (pos + 1)
      else false
    in check_b 1
  else if len = 1 then false
  else text_match_three (String.sub text 1 (len - 1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by three 'b'. *)
