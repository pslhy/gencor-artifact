let rec find_adverb_position (text : string) :  int * int * string =
    match text with
    | "" -> failwith "Empty text"
    | _ ->
        let find_first_adverb (text : string) (start_index : int) : bool * int =
            match start_index < text.length with
            | true ->
                let current_char = text.[start_index] in
                let next_char = text.[start_index + 1] in
                if current_char = ' ' && next_char = 'a' then
                    true, start_index
                else
                    false, -1
            | _ -> false, -1
        in
        let rec search_adverb (text : string) (start_index : int) : bool * int =
            match start_index < text.length with
            | true ->
                let (is_adverb, index) = find_first_adverb text start_index in
                match is_adverb with
                | true -> true, index
                | false -> search_adverb text (start_index + 1)
            | _ -> false, -1
        in
        let (is_adverb, index) = search_adverb text 0 in
        match is_adverb with
        | true -> index, start_index, "adverb"
        | false -> failwith "Adverb not found"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
