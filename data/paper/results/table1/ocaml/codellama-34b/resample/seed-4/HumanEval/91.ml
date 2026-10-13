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
    let len = String.length s in
    let rec loop (i : int) (count : int) =
        if i = len then
            count
        else if s.[i] = '.' || s.[i] = '?' || s.[i] = '!' then
            loop (i + 1) 0
        else if s.[i] = 'I' then
            loop (i + 1) (count + 1)
        else
            loop (i + 1) count
    in
    loop 0 0

