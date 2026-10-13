(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     You'll be given a string of words, and your task is to count the number *)
(*     of boredoms. A boredom is a sentence that starts with the word "I". *)
(*     Sentences are delimited by '.', '?' or '!'. *)
(*     For example: *)
(*     >>> is_bored "Hello world" *)
(*     0 *)
(*     >>> is_bored "The sky is blue. The sun is shining. I love this weather" *)
(*     1 *)
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
      let before, after = String.split_at s next_index in
      if String.trim before = "I" then 1 else 0
      + is_bored (String.sub after 1 (String.length after - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:27: Unbound value "String.split_at" *)
(*     Please regenerate the code, taking these errors into account. *)
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
      let before, after = (String.sub s 0 next_index), (String.sub s (next_index + 1) (String.length s - next_index - 1)) in
      if String.trim before = "I" then 1 else 0
      + is_bored after

