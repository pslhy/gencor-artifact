
let rec count_distinct_characters (string : string) : int =
    let strip_case (c : char) : char = Char.lowercase_ascii c in
    let strip_duplicates (set : char list) : char list =
        match set with
        | [] -> []
        | (hd :: tl) :: rest -> (strip_case hd) :: (strip_case tl) :: rest
        | _ -> set
    in
    string
    |> String.to_seq
    |> List.of_seq
    |> strip_duplicates
    |> List.length;;

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
