let rec is_bored (s : string) : int =
  match s with
  | "" -> 0
  | _ when s.[0] = 'I' -> 1 + is_bored (String.sub s 1 (String.length s - 1))
  | _ -> match s with
    | _ when String.contains s '.' || String.contains s '?' || String.contains s '!' ->
      let (substring, rest) =
        match String.index_from s 0 '.' with
        | exception Not_found -> (s, "")
        | i -> (String.sub s 0 i, String.sub s (i+1) (String.length s - i - 1))
      in
      is_bored rest + is_bored substring
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
