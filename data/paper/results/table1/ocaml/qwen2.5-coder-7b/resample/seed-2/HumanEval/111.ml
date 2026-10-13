(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
        in aux (Str.split (Str.regexp " ") chars) []
    in
    let counts = count_chars test in
    let max_count = List.fold_left (fun acc (_, count) -> if count > acc then count else acc) 0 counts in
    List.filter (fun (_, count) -> count = max_count) counts

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:17: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
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
        in aux (String.split_on_char ' ' chars) []
    in
    let counts = count_chars test in
    let max_count = List.fold_left (fun acc (_, count) -> if count > acc then count else acc) 0 counts in
    List.filter (fun (_, count) -> count = max_count) counts
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
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
        in aux (String.split_on_char ' ' chars) []
    in
    let counts = count_chars test in
    let max_count = List.fold_left (fun acc (_, count) -> if count > acc then count else acc) 0 counts in
    List.filter (fun (_, count) -> count = max_count) counts

