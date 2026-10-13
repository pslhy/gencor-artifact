let rec histogram (test : string) : (string * int) list = 
    let rec helper words counts =
        match words with
        | [] -> List.sort_uniq (fun (a,_) (b,_) -> Pervasives.compare a b) counts
        | w::ws ->
            let count = List.assoc_default 0 w counts in
            let new_counts = (w, count + 1) :: List.remove_assoc w counts in
            helper ws new_counts
    in
    test |> String.split_on_char ' ' |> helper []


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
