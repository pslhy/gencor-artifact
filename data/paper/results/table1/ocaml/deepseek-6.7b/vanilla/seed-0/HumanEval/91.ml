let rec is_bored (s : string) : int =
    match s with
    | "" -> 0
    | s -> 
        let after_dot =
            match String.index_opt s '.' with
            | None -> s
            | Some i -> String.sub s (i+1) ((String.length s) - i - 1)
        in
        let after_question =
            match String.index_opt after_dot '?' with
            | None -> after_dot
            | Some i -> String.sub after_dot (i+1) ((String.length after_dot) - i - 1)
        in
        let after_exclamation =
            match String.index_opt after_question '!' with
            | None -> after_question
            | Some i -> String.sub after_question (i+1) ((String.length after_question) - i - 1)
        in
        if (String.sub after_exclamation 0 1) = "I" then 1 else 0


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
