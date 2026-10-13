let rec long_words (n : int) (str : string) : string list =
  let rec helper acc curr_word curr_len lst =
    match lst with
    | [] -> (curr_word, curr_len)::acc
    | h::t ->
        if h = " " then
          helper acc "" 0 t
        else if curr_len = 0 then
          helper acc h (String.length h) t
        else 
          helper acc curr_word (curr_len + String.length h + 1) t
  in
  let words_lengths = helper [] "" 0 (String.to_list str) in
  List.filter (fun (_, len) -> len > n) words_lengths |> List.map (fun (word, _) -> word)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find words that are longer than n characters from a given list of words. *)
