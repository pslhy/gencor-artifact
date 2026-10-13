let rec how_many_times (string : string) (substring : string) : int = 
  let len_string = String.length string in
  let len_substring = String.length substring in
  if len_substring > len_string then 0
  else
    let rec count_from start =
      if start + len_substring > len_string then 0
      else if String.sub string start len_substring = substring then
        1 + count_from (start + 1)
      else
        count_from (start + 1)
    in
    count_from 0


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
