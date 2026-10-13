let rec text_match_one (text : string) : bool =
  let len = String.length text in
  if len < 2 then false
  else if text.[0] = 'a' then
    let rec iter i =
      if i = len then false
      else if text.[i] = 'b' then true
      else iter (i + 1)
    in
    iter 1
  else if text.[1] = 'a' then text_match_one (String.sub text 1 (len - 1))
  else false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an a followed by one or more b's. *)
