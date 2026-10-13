let rec is_bored (s : string) : int = 
  let rec count_boredOccurrences (words : string list) : int =
    match words with
    | [] -> 0
    | w :: ws ->
      if w = "I" then 1 + count_boredOccurrences ws
      else count_boredOccurrences ws
  in
  let split_sentences s = 
    let rec split acc s =
      match String.index_opt s ['.'; '?'; '!'] with
      | None -> [acc ^ s]
      | Some i -> acc ^ String.sub s 0 i :: split "" (String.sub s (i + 1) (String.length s - i - 1))
    in split "" s
  in
  let words = split_sentences s |> List.map String.trim |> List.filter ((<>) "") in
  count_boredOccurrences words


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
