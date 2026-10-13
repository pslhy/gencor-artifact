
let rec histogram (test : string) : (string * int) list = 
    let count_chars chars = 
        let rec aux chars assoc = 
            match chars with
            | [] -> assoc
            | x :: xs -> 
                if List.mem_assoc x assoc then
                    aux xs ((x, 1 + List.assoc x assoc) :: (List.remove_assoc x assoc))
                else
                    aux xs ((x, 1) :: assoc)
        in aux (String.split_on_char ' ' test) []
    in
    let max_count assoc = 
        let rec aux assoc max = 
            match assoc with
            | [] -> max
            | (k, v) :: vs -> max (max v) (aux vs max)
        in aux assoc 0
    in
    let max_count = max_count count_chars in
    let rec filter_by_max assoc max = 
        match assoc with
        | [] -> []
        | (k, v) :: vs -> if v = max then (k, v) :: filter_by_max vs max else filter_by_max vs max
    in
    filter_by_max count_chars max_count



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
