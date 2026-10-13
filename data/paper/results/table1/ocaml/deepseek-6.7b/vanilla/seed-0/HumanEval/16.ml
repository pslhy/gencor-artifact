let rec count_distinct_characters (string : string) : int =
    let rec distinct_helper (char_list : char list) (unique : char list) : char list =
        match char_list with
        | [] -> unique
        | h :: t -> if List.mem h unique then distinct_helper t unique
                    else distinct_helper t (h::unique)
    in
    let distinct_chars = distinct_helper (List.rev (String.to_seq string |> List.of_seq)) [] in
    List.length distinct_chars;;



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
