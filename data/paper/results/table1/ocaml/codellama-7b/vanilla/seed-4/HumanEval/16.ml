let rec count_distinct_characters (string : string) : int =
  if string = "" then 0
  else begin
    let first_char = string.[0] in
    let rest = String.sub string 1 (String.length string - 1) in
    let cnt = count_distinct_characters rest in
    if String.contains rest first_char then cnt
    else cnt + 1
  end


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
