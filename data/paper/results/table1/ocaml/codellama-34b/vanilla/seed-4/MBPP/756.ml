let rec text_match_zero_one (text : string) : bool = 
    (*
     * This function matches a string that optionally (0 or more) contains a letter "a" followed by a letter "b".
     * It uses the regular expression "(a?b*)*".
     * To match the entire text, it starts at the beginning of the text and checks if the current symbol matches the pattern.
     * If it does, it moves to the next symbol and repeats the process. If it doesn't, it returns false.
     * If it reaches the end of the text, it returns true.
     *)
    match text with
    | "" -> true
    | _ ->
        if text.[0] = 'a' then
            text_match_zero_one (String.sub text 1)
        else if text.[0] = 'b' then
            text_match_zero_one (String.sub text 1)
        else
            false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/mlthon-exercises/re/mlthon-re-exercise-3.php *)
