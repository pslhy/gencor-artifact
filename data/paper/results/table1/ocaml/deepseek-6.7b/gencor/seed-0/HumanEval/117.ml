
let rec select_words (s : string) (n : int) : string list =
    let vowels = ['a'; 'e'; 'i'; 'o'; 'u'] in
        match s with 
        | "" -> []
        | _ -> 
            let getConsonants s = 
                String.to_seq s |> List.of_seq 
                |> List.filter (fun c -> not (List.mem c vowels)) 
                |> List.length 
            in 
            let rec count_words s word words cnt n =
                match s with
                | "" -> (if cnt = n then List.rev (word :: words) else words)
                | _ -> 
                    if cnt < n then 
                        match String.index_from s 0 ' ' with
                        | exception Not_found -> if getConsonants word = n then count_words "" (word ^ s) words (cnt + getConsonants s) n
                 else count_words "" "" words cnt n
                        | pos -> count_words (String.sub s (pos + 1) (String.length s - pos - 1)) "" (if getConsonants word = n then word :: words else words) (cnt + getConsonants (String.sub s 0 pos)) n
                    else count_words "" "" words cnt n
            in 
            count_words s "" [] 0 n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
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
