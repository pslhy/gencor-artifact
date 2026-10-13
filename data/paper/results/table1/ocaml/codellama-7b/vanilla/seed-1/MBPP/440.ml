let rec find_adverb_position (text : string) :  int * int * string =
match text with
| "" -> raise (Failure "Input cannot be an empty string")
| _ ->
    let sub_text = Str.first_word text in
    let index = String.length sub_text in
    let remaining_text = String.sub text index (String.length text - index) in
    match remaining_text with
    | "" -> raise (Failure "No adverb found in the given sentence")
    | _ ->
        let adverb = Str.first_word remaining_text in
        if String.is_adverb adverb then
            (index, index + String.length adverb, adverb)
        else
            find_adverb_position remaining_text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
