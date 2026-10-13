let rec is_bored (s : string) : int = 
  let split_sentences = String.split_on_char '.' s in
  let count_bored sentence acc = 
    if String.trim sentence |> String.starts_with ~prefix:"I " then acc + 1 else acc 
  in
  List.fold_left count_bored 0 split_sentences
  |> fun x -> if x > 0 then x else 0;;


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
