
let rec is_bored (s : string) : int =
  if String.length s <= 1 then
    0
  else if s.[0] = 'I' && s.[1] = ' ' then
    let idx = ref 1 in
    while !idx < String.length s - 1 && s.[!idx] <> '.' && s.[!idx] <> '?' && s.[!idx] <> '!' do
      incr idx
    done;
    1 + (if !idx < String.length s - 1 then is_bored (String.sub s !idx (String.length s - !idx - 1)) else 0)
  else
    is_bored (String.sub s 1 (String.length s - 1))

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
