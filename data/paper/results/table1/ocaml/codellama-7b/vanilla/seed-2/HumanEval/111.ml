let rec histogram (test : string) : (string * int) list =
    match test with
    | "" -> []
    | _ ->
        let hist = String.concat " " (String.split_on_char ' ' test)
                 |> String.split_on_char '\n'
                 |> List.map (fun word -> word |> String.count Char.equal 'a') in
        let max_count = List.fold_left max 0 hist in
        let max_index = List.find_index (fun e -> e = max_count) hist in
        if max_index = None then []
        else List.nth hist (Option.get max_index) |> List.map (fun count -> ("a", count))


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
