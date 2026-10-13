let rec how_many_times (string : string) (substring : string) : int =
  let sub_len = String.length substring in
  let str_len = String.length string in
  if sub_len = 0 || str_len = 0 then 0
  else
    let rec count_substring start_pos count =
      if start_pos + sub_len > str_len then count
      else if String.sub string start_pos sub_len = substring then
        count_substring (start_pos + 1) (count + 1)
      else 
        count_substring (start_pos + 1) count
    in
    count_substring 0 0;;


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
