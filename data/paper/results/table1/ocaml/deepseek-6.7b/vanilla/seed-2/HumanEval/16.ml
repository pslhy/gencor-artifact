let rec count_distinct_characters (string : string) : int =
  let string = String.lowercase_ascii string in
  let rec distinct_chars (input : string) (acc : char list) : char list = 
    match input with
    | "" -> acc
    | s -> let char_list = s.[0]::(List.filter (fun x -> x<>s.[0]) acc) in
           distinct_chars (String.sub s 1 (String.length s - 1)) char_list
  in
  List.length (distinct_chars string [])


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
