let rec is_bored (s : string) : int = 
  let rec count_boreDOMs s count =
    let trim s = if s = "" then "" else String.trim s in
    let sentence, rest = match String.index_opt s [ '. ';'?'; '!' ] with
      | Some del -> trim @@ String.sub s 0 del, trim @@ String.sub s (del + 1) (String.length s - (del + 1))
      | None -> trim s, ""
    in
    if sentence = "" then count
    else if String.starts_with sentence ~prefix:"I " then count_boreDOMs rest (count + 1)
    else count_boreDOMs rest count
  in
  count_boreDOMs s 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
