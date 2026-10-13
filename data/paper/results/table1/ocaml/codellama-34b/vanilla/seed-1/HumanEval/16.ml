let rec count_distinct_characters (string : string) : int =
    let strip_case (c : char) : char = Char.lowercase c in
    let rec loop (seen : Set.Make(Char).t) (remaining : string) : int =
        match remaining with
        | [] -> Set.cardinal seen
        | c :: rest ->
            let c = strip_case c in
            if Set.mem seen c then loop seen rest
            else loop (Set.add seen c) rest
    in
    loop Set.empty string


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string, find out how many distinct characters (regardless of case) does it consist of *)
(*     >>> count_distinct_characters "xyzXYZ" *)
(*     3 *)
(*     >>> count_distinct_characters "Jerry" *)
(*     4 *)
