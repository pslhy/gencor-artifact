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
  if string = "" then 0 else
  let (hd, tl) = (String.lowercase string.[0], String.sub string 1 ((String.length string) - 1)) in
  if (String.contains tl hd) then count_distinct_characters tl else 1 + count_distinct_characters tl

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:19: Unbound value "String.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
  if string = "" then 0 else
  let (hd, tl) = (Char.lowercase string.[0], String.sub string 1 ((String.length string) - 1)) in
  if String.contains tl hd then count_distinct_characters tl else 1 + count_distinct_characters tl

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:19: Unbound value "Char.lowercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
  if string = "" then 0 else
  let (hd, tl) = (Char.lowercase_ascii string.[0], String.sub string 1 ((String.length string) - 1)) in
  if String.contains tl hd then count_distinct_characters tl else 1 + count_distinct_characters tl

