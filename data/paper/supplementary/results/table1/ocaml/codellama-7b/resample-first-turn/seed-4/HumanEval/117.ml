let rec select_words (s : string) (n : int) : string list =
  if s = "" then
    []
  else
    let first_word =
      match String.chop_prefix ~prefix:" " s with
      | Some s -> s
      | None -> s
    in
    let (cons_words, rest) =
      String.rev
        (String.split_on_chars first_word ~on:[' '; '.'])
      |> List.(take_while (fun word -> String.length word >= n))
      |> List.(rev_map (fun word -> (word, String.length word - n)))
    in
    List.fold cons_words ~init:[] ~f:(fun acc (word, n) ->
        if n = n then
          word :: acc
        else
          acc) @
    select_words rest (n - String.length (List.hd_exn cons_words))
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
