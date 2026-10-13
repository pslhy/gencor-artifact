let rec select_words (s : string) (n : int) : string list = 
  let is_consonant c = 
    let lower_c = Char.lowercase_ascii c in
    lower_c >= 'a' && lower_c <= 'z' && lower_c <> 'a' && lower_c <> 'e' && lower_c <> 'i' && lower_c <> 'o' && lower_c <> 'u' in
  let rec count_consonants word count = 
    if word = "" then count else 
      if is_consonant (word.[0]) then count_consonants (String.sub word 1 (String.length word - 1)) (count + 1) else 
      count_consonants (String.sub word 1 (String.length word - 1)) count in
  let words = String.split_on_char ' ' s in
  List.filter (fun word -> count_consonants word 0 = n) words


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
