
let rec count_distinct_characters (string : string) : int = 
    let uppercase_string = String.uppercase_ascii string in
    let length = String.length uppercase_string in
    match length with
    | 0 -> 0
    | 1 -> 1
    | _ -> 1 + count_distinct_characters (String.sub uppercase_string 1 (length - 2))

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
