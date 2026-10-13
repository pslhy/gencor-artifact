let rec count_distinct_characters (string : string) : int =
    match string with
    | "" -> 0
    | string ->
        let char = String.lowercase_ascii (String.get string 0) in
        let chars = List.map String.lowercase_ascii (String.to_list string) in
        (List.length (List.filter (fun x -> String.equal char x) chars)) + (count_distinct_characters (String.sub string 1 (String.length string - 1)))


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
