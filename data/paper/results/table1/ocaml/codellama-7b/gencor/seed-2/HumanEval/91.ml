
let rec is_bored (s : string) : int =
  match String.split_on_char '.' s with
  | [sentence] ->
    if String.starts_with sentence "I" then
      1
    else
      0
  | sentences ->
    let count = List.fold_left (fun acc sentence -> if String.starts_with sentence "I" then acc + 1 else acc) 0 sentences in
    count + (is_bored (String.concat "." sentences))

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
