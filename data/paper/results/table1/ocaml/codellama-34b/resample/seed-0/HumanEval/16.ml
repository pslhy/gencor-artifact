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
    if string = "" then 0
    else if string.[0] = string.[1] then count_distinct_characters (string.[1..])
    else 1 + count_distinct_characters (string.[1..])

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:80: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
    if string = "" then 0
    else if string.[0] = string.[1] then count_distinct_characters (string.[1..])
    else 1 + count_distinct_characters (string.[1..])

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:80: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec count_distinct_characters (string : string) : int =
  if String.length string = 0 then 0
  else if String.get string 0 = String.get string 1 then
    count_distinct_characters (String.sub string 1 (String.length string - 1))
  else 1 + count_distinct_characters (String.sub string 1 (String.length string - 1))

