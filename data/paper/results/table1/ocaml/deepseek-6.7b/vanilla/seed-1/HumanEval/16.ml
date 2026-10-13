let rec count_distinct_characters (string : string) : int =
  let string_lower = String.lowercase_ascii string in
  let rec loop (string : string) (current_index : int) (distincts : int) : int =
    if current_index = String.length string then distincts
    else
      let next_index = current_index + 1 in
      if String.contains_from string next_index (String.make 1 (String.get string current_index)) then loop string next_index distincts
      else loop string next_index (distincts + 1)
  in
  loop string_lower 0 0;;


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
