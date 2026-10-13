let rec select_words (s : string) (n : int) : string list =
    let len = String.length s in
    let rec loop (i : int) (acc : string list) : string list =
        if i >= len then
            acc
        else
            let w = String.sub s i (len - i) in
            let vowel_count =
                String.fold_left (fun acc c -> if is_vowel c then acc + 1 else acc) 0 w
            in
            if vowel_count = n then
                loop (i + 1) (w :: acc)
            else
                loop (i + 1) acc
    in
    loop 0 []
;;

let is_vowel (c : char) : bool =
    match c with
    | 'a' | 'e' | 'i' | 'o' | 'u' -> true
    | _ -> false
;;


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
