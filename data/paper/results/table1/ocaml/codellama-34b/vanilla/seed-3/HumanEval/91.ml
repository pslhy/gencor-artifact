let rec is_bored (s : string) : int =
  if String.length s <= 1 then
    0
  else if s.[0] = 'I' && s.[1] = ' ' then
    let idx = index_after_delimiter s in
    let rest_of_string = String.sub s 2 (idx - 1) in
    is_bored rest_of_string + 1
  else
    is_bored (String.drop_while (fun c -> c <> '.' && c <> '?' && c <> '!') rest_of_string)

let index_after_delimiter (s : string) : int =
  for i = 0 to String.length s - 1 do
    if s.[i] = '.' || s.[i] = '?' || s.[i] = '!' then
      let idx = i + 1 in
      if idx = String.length s || s.[idx] = ' ' then
        raise Not_found
      else
        idx
  done;
  raise Not_found


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
