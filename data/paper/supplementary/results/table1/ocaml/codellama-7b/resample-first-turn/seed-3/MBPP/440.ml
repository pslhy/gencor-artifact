let rec find_adverb_position (text : string) :  int * int * string =
  if String.length text <= 1 then
    (~1, ~1, "")
  else
    match Find.first_word text with
      Some (word, index) ->
        let rest = String.sub text (index + 1) (String.length text - index - 1) in
        match Find.first_word rest with
          Some (word', _) -> (index, index + 1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position (String.sub rest (1 + find_adverb_position text)))))))))))))) with
            None -> (index, String.length text - 1, word')
    | None -> (index, String.length text - 1, word')

and find_adverb_word (text : string) : string * int option =
  match Find.first_word text with
    Some (word, index) ->
      if is_adverb word then
        (word, Some index)
      else
        find_adverb_word (String.sub text (index + 1) (String.length text - index - 1))
      | None -> (text, None)

and is_adverb (text : string) : bool =
  match Find.first_word text with
    Some (word, _) ->
      match word with
        "very" -> true
      | "mkay" -> true
  | None -> false

let rec find_adverbs (text : string) : (string * int) list =
  match find_adverb_word text with
    (word, index) ->
      if index = None then
        []
      else
        (word, index) :: find_adverbs (String.sub text (index + 1) (String.length text - index - 1))

let full_process (text : string) : (int * int * string list) =
  match find_adverbs text with
    adverbs ->
      let positions = List.map (fun (word, index) -> find_adverb_position (String.sub text (index + 1) (String.length text - index - 1))) adverbs in
      let first_position = List.fold_left min (positions.hd) positions in
      (first_position, first_position + String.length (List.nth adverbs 0), List.map (fun (word, index) -> word) adverbs)

let string_of_positions ((first, last, _) : (int * int * string list)) : string =
  (string_of_int first) ^ "," ^ (string_of_int last)

let string_of_adverbs (adverbs : (int * int * string list)) : string =
  String.concat ", " (List.map (fun (word, index) -> (String.concat [word; ", "; string_of_int index])) adverbs)

let () =
  assert ((find_adverbs "will find first very much mkay mlkshk") = [("very", Some 0); ("mkay", Some 9); ("mlkshk", Some 17)])
  assert ((string_of_positions (full_process "will pfind first very much mkay mlkshk") = "0,11") : bool)
  assert ((string_of_adverbs (full_process "will pfind first very much mkay mlkshk") = "very,0;mkay,9;mlkshk,17") : bool)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
