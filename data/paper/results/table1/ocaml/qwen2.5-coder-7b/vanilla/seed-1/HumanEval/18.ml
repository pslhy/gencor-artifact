let rec how_many_times (string : string) (substring : string) : int = 
  let len_string = String.length string in
  let len_substring = String.length substring in
  if len_substring = 0 then len_string
  else if len_substring > len_string then 0
  else
    let count = ref 0 in
    let rec check_from i =
      if i <= len_string - len_substring then
        if String.sub string i len_substring = substring then
          begin
            incr count;
            check_from (i + 1)
          end
        else
          check_from (i + 1)
    in
    check_from 0;
    !count


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
