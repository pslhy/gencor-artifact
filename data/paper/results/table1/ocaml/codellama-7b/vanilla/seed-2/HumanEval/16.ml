let rec count_distinct_characters (string : string) : int =
  match string with
  | "" -> 0
  | (first::rest) ->
    let char = first in
    let is_distinct = ref true in
    for i = 0 to String.length stale do
      if String.get stale i = char then
        is_distinct := false;
    done;
    if !is_distinct then
      1 + count_distinct_characters rest
    else
      count_distinct_characters rest


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
