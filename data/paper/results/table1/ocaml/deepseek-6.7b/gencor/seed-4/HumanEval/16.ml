
let rec count_distinct_characters (string : string) : int =
  let string_lower = String.lowercase_ascii string in
  let rec count_distinct_char (s : string) (accumulator : char list) : int =
    match s with
    | "" -> List.length accumulator
    | _ ->
       let char_list = List.filter (fun c -> c <> String.get s 0) accumulator in
       count_distinct_char (String.sub s 1 (String.length s - 1)) (String.get s 0 :: char_list)
  in
  count_distinct_char string_lower []

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
