let rec select_words (s : string) (n : int) : string list =
  match s with
  | "" -> []
  | _ ->
    let is_consonant c =
      match c with
      | 'a' | 'e' | 'i' | 'o' | 'u' | 'A' | 'E' | 'I' | 'O' | 'U' -> false
      | _ -> true
    in
    let rec aux (i : int) (j : int) (l : string list) : string list =
      if i = String.length s then
        l
      else
        let c = String.get s i in
        if is_consonant c then
          aux (i + 1) (j + 1) (l @ [String.sub s ~pos:i ~len:(j + 1)])
        else
          aux (i + 1) 0 l
    in
    aux 0 0 []


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
