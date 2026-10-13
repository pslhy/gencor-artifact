
let rec is_bored (s : string) : int = 
  let rec count_boreDOMs s count =
    let trim s = if s = "" then "" else String.trim s in
    let sentence, rest = match String.index_opt s [ '.'; '?'; '!' ] with
      |Some idx -> String.sub s 0 idx, String.sub s (idx + 1) (String.length s - idx - 1)
      |None -> s, ""
    in
    let trimmed_sentence = trim sentence in
    if String.starts_with trimmed_sentence ~pos_out:0 "I" then count_boreDOMs rest (count + 1)
    else count_boreDOMs rest count
  in
  count_boreDOMs (String.lowercase_ascii s) 0

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
