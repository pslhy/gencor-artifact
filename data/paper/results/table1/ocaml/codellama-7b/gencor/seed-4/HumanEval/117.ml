
let rec select_words (s : string) (n : int) : string list =
  if s = "" then
    []
  else
    let first_word =
      match String.index_opt s ' ' with
      | None -> s
      | Some i -> String.sub s 0 i
    in
    let remaining_string =
      match String.index_opt s ' ' with
      | None -> ""
      | Some i -> String.sub s (i + 1) (String.length s - i - 1)
    in
    if (String.map (fun c -> if Char.lowercase_ascii c = 'a' || Char.lowercase_ascii c = 'e' || Char.lowercase_ascii c = 'i' || Char.lowercase_ascii c = 'o' || Char.lowercase_ascii c = 'u' then false else true) first_word |> String.to_seq |> Seq.length) = n then
      first_word :: select_words remaining_string n
    else
      select_words remaining_string n

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
