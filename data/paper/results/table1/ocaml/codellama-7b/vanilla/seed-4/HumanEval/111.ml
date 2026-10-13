let rec histogram (test : string) : (string * int) list = 
    match String.split_on_char ' ' test with 
        | [||] -> 
            [] 
        | letters -> 
            let letter_counts = Array.fold_left (fun c s -> Char.escaped s, c + 1) 
                                         0 
                                         (Array.of_list letters) in 
            snd @@ List.fold_left (fun (max_letter, max_count) (letter, count) -> if count > max_count then (letter, count) else (max_letter, max_count)) 
                                 ("*", -1) 
                                 letter_counts


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
