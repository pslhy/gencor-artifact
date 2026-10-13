let rec find_adverb_position (text : string) :  int * int * string = 
    (* helper function that checks if a word is an adverb *)
    let is_adverb word =
        match word with
        | "quick" | "slow" | "so" | "very" -> true
        | _ -> false
    in
    (* helper function that returns the word and its position in the text *)
    let rec word_position (word : string) (pos : int) (text : string) =
        match text with
        | "" -> ("", 0)
        | _ ->
            let nextChar = String.get text (pos + 1) in
            if nextChar = (' ' || nextChar = ('\n') || nextChar = ('\t')) then
                (word, pos)
            else
                word_position (word + nextChar) (pos + 1) (String.sub text (pos + 1))
    in
    (* main function that finds the adverb and its position in the sentence *)
    match text with
    | "" -> ("", 0, "")
    | _ ->
        let text = text in
        let pos = ref (-1) in
        let word = ref "" in
        let found = ref false in
        for i = 0 to String.length text - 1 do
            let currentChar = String.get text i in
            if currentChar = ' ' then
                if !found then
                    let (word', pos') = word_position (String.sub text !pos (i - !pos)) !pos (String.sub text !pos (i - !pos)) in
                    if is_adverb word' then
                        pos := !pos';
                        word := word';
                        found := true;
                        ()
                else
                    pos := i;
                    word := "";
                    found := false;
                    ()
        done;
        (!word, !pos, String.sub text !pos (String.length text - !pos))
in
find_adverb_position "the quick brown fox"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
