let rec count_distinct_characters (string : string) : int =
  match string with
  | "" -> 0
  | (head :: tail) ->
    let head_char = Char.lowercase_ascii head in
    let tail_char_count = count_distinct_characters tail in
    if List.mem head_char tail_char_count then tail_char_count
    else tail_char_count + 1


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
