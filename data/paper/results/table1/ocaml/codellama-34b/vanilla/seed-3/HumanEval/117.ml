let rec select_words (s : string) (n : int) : string list =
  if n < 1 then [] else
  let words = String.split_on_char ' ' s in
  let rec contains_n_consonants (w : string) : bool =
    let is_vowel c = List.mem c ['a'; 'e'; 'i'; 'o'; 'u'] in
    let rec loop (i : int) (cc : int) =
      if i >= String.length s then cc = n else
      if is_vowel s.[i] then loop (i + 1) cc else loop (i + 1) (cc + 1)
    in loop 0 0
  in List.filter contains_n_consonants words


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
