
let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | _ -> 
      let next_dot = String.index_from s 0 '.' in
      let next_question = String.index_from s 0 '?' in
      let next_exclamation = String.index_from s 0 '!' in
      let next_index = 
        min (min next_dot next_question) next_exclamation 
      in
      let before, after = String.split_on_char next_index s in
      if before = "" || (String.trim before = "") then is_bored after 
      else if String.sub before 0 (String.length "I") = "I" then 1 + is_bored after 
      else is_bored after

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
