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
    let is_bored s =
        match s with
        | "" -> 0
        | _ ->
            let is_bored = ref false in
            for i = 0 to String.length s - 1 do
                if s.[i] = 'I' then
                    is_bored := true
            done;
            if !is_bored then 1 else 0
    in
    s |> String.split_on_char '.' |> List.map is_bored |> List.fold_left (+) 0
    
let is_bored (s : string) : int =
    s |> String.split_on_char '.' |> List.map is_bored |> List.fold_left (+) 0
    
let is_bored (s : string) : int =
    let is_bored s =
        match s with
        | "" -> 0
        | _ ->
            let is_bored = ref false in
            for i = 0 to String.length s - 1 do
                if s.[i] = 'I' then
                    is_bored := true
            done;
            if !is_bored then 1 else 0
    in
    s |> String.split_on_char '.' |> List.map is_bored |> List.fold_left (+) 0

