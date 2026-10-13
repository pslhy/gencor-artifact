
let rec find_adverb_position (text : string) :  int * int * string =
  if String.length text <= 1 then
    (~-1, ~-1, "")
  else
    match text.[0] with
    | 'a' .. 'z' | 'A' .. 'Z' -> find_adverb_position (String.sub text 1 (String.length text - 1))
    | _ ->
        let filtered_words = text |> String.split_on_char ' ' |> List.filter (fun word -> String.contains "-" word) in
        match filtered_words with
        | [] -> (~-1, ~-1, "")
        | first_word :: _ -> (String.index text first_word, String.rindex text first_word + String.length first_word - 1, first_word)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
