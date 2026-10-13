let rec count_distinct_characters (string : string) : int =
  let string_lower = String.lowercase_ascii string in
  let rec loop count already_counted remainder =
    match remainder with
    | "" -> count
    | _ -> let new_count =
              if List.mem (String.get remainder 0) already_counted then
                count
              else count + 1
            in
            loop new_count (String.get remainder 0 :: already_counted) (String.sub remainder 1 (String.length remainder - 1))
  in
  loop 0 [] string_lower


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
