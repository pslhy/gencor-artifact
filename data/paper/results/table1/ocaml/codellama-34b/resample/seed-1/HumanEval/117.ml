(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string s and a natural number n, you have been tasked to implement *)
(*     a function that returns a list of all words from string s that contain exactly *)
(*     n consonants, in order these words appear in the string s. *)
(*     If the string s is empty then the function should return an empty list. *)
(*     Note: you may assume the input string contains only letters and spaces. *)
(*     Examples: *)
(*     >>> select_words "Mary had a little lamb" 4 *)
(*     ["little"] *)
(*     >>> select_words "Mary had a little lamb" 3 *)
(*     ["Mary"; "lamb"] *)
(*     >>> select_words "simple white space" 2 *)
(*     [] *)
(*     >>> select_words "Hello world" 4 *)
(*     ["world"] *)
(*     >>> select_words "Uncle sam" 3 *)
(*     ["Uncle"] *)
let rec select_words (s : string) (n : int) : string list =
    let is_consonant (c : char) : bool =
        match c with
        | 'a' | 'e' | 'i' | 'o' | 'u' -> false
        | _ -> true
    in
    let rec loop (cs : char list) (count : int) (acc : string list) : string list =
        match cs with
        | [] -> acc
        | c :: cs ->
            if is_consonant c then
                loop cs (count + 1) acc
            else if count = n then
                loop cs 0 ("" :: acc)
            else
                loop cs 0 acc
    in
    loop (String.to_seq s |> List.of_seq) 0 []

