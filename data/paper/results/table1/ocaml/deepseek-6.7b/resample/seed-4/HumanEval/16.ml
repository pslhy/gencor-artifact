(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given a string, find out how many distinct characters (regardless of case) does it consist of *)
(*     >>> count_distinct_characters "xyzXYZ" *)
(*     3 *)
(*     >>> count_distinct_characters "Jerry" *)
(*     4 *)
let rec count_distinct_characters (string : string) : int =
  let string_lower = String.lowercase string in
  let rec add_char string_lower seen = 
    match string_lower with
      | "" -> seen
      | s  -> let new_seen = if String.contains seen (String.sub s 0 1) then seen else seen ^ (String.sub s 0 1) in
              add_char (String.sub s 1 (String.length s - 1)) new_seen
  in
  let distinct_lower = add_char string_lower "" in
  String.length distinct_lower

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:22: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
  let string_lower = String.lowercase_ascii string in
  let rec add_char string_lower seen = 
    match string_lower with
      | "" -> seen
      | s  -> let new_seen = if String.contains seen (String.sub s 0 1) then seen else seen ^ (String.sub s 0 1) in
              add_char (String.sub s 1 (String.length s - 1)) new_seen
  in
  let distinct_lower = add_char string_lower "" in
  String.length distinct_lower

