let rec is_bored (s : string) : int =
  if s = "" then 0 else
  match s.[0] with
  | '.' | '?' | '!' -> is_bored (String.sub s 2 (String.length s - 2))
  | 'I' -> 1 + is_bored (String.sub s 1 (String.length s - 1))
  | _ -> is_bored (String.sub s 1 (String.length s - 1))


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
