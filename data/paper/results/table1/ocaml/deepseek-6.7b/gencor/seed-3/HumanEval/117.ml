
let rec select_words (s : string) (n : int) : string list =
  let count_consonants word =
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ" in
    String.length (String.map (fun c -> if String.contains consonants c then 'c' else c) word) - (String.length word)
  in
  let rec helper (s : string) (n : int) (acc : string list) : string list =
    match s with
    | "" -> List.rev acc
    | _ ->
       let word = String.sub s 0 (String.index s ' ') in
       if String.length word > 0 && count_consonants word = n then
         helper (String.sub s (String.length word + 1) (String.length s - String.length word - 1)) n (word :: acc)
       else
         helper (String.sub s (String.length word + 1) (String.length s - String.length word - 1)) n acc
  in
  helper (String.trim s) n []

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
