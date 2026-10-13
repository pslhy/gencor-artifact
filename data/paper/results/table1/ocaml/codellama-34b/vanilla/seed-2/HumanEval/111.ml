let rec histogram (test : string) : (string * int) list =
    let letters = List.map (fun c -> (c, 1)) test in
    let rec helper (letters : (string * int) list) (acc : (string * int) list) =
        match letters with
        | [] -> acc
        | (letter, count) :: rest ->
            if List.exists (fun (_, count') -> count' = count) acc then
                helper rest ((letter, count) :: acc)
            else
                helper rest acc
    helper letters []


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
