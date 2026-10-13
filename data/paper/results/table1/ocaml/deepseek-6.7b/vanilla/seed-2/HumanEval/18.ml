let rec how_many_times (string : string) (substring : string) : int =
  let len_substring = String.length substring in
  let len_string = String.length string in
  if len_substring = 0 then
    0
  else if len_string < len_substring then
    0
  else
    let first_match = String.index string substring 0 in
    let rest_after_match = String.sub string (first_match + len_substring) (len_string - first_match - len_substring) in
    1 + how_many_times rest_after_match substring


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Find how many times a given substring can be found in the original string. Count overlaping cases. *)
(*     >>> how_many_times "" "a" *)
(*     0 *)
(*     >>> how_many_times "aaa" "a" *)
(*     3 *)
(*     >>> how_many_times "aaaa" "aa" *)
(*     3 *)
