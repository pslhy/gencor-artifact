
let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    match c with 
    | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false 
    | _ -> true 
  in
  let count_consonants ws = 
    List.fold_left (fun acc w -> acc + (List.length (List.filter is_consonant (List.of_seq (String.to_seq w))))) 0 ws 
  in
  let words = List.of_seq (String.to_seq (String.trim s)) in
  let rec filter_words acc ws = 
    match ws with 
    | [] -> acc 
    | w :: ws -> 
      if count_consonants [w] = n then filter_words (w :: acc) ws 
      else filter_words acc ws 
  in 
  List.rev (filter_words [] (List.filter (fun w -> count_consonants [w] > 0) words))

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
