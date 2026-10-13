let rec select_words (s : string) (n : int) : string list = 
  let consonants = "bcdfghjklmnpqrstvwxyz" in
  let is_consonant c = 
    let lower_c = char_of_int (int_of_char c + if c >= 'A' && c <= 'Z' then 32 else 0) in
    String.contains consonants lower_c in
  let count_consonants word = 
    List.length (List.filter is_consonant (List.of_seq (String.to_seq word))) in
  s 
  |> String.split_on_char ' ' 
  |> List.filter (fun word -> count_consonants word = n)


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
