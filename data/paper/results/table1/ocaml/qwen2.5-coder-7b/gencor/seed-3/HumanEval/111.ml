
let rec histogram (test : string) : (string * int) list = 
    let rec helper words counts =
        match words with
        | [] -> List.sort_uniq (fun (a,_) (b,_) -> Printf.printf "c=%d\n" (compare a b); compare a b) counts
        | word::rest ->
            let updated_counts = 
                match List.find_opt (fun (w, _) -> w = word) counts with
                | Some (_, n) -> List.map (fun (w, m) -> if w = word then (w, n + 1) else (w, m)) counts
                | None -> (word, 1) :: counts
            in
            helper rest updated_counts
    in
    if test = "" then [] else helper (String.split_on_char ' ' test) []

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
