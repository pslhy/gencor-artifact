let rec count_distinct_characters (string : string) : int = 
  let rec check (str: string) (seen: bool array) : bool array = 
    if str = "" then seen
    else 
      let char = Char.lowercase_ascii (String.get str 0) in
      let idx = Char.code char - Char.code 'a' in
      check (String.sub str 1 (String.length str - 1)) (Array.set seen idx true; seen)
  in
  let seen = Array.make 26 false in
  let _ = check string seen in
  Array.fold_left (+) 0 seen
  
let count_distinct_characters str = count_distinct_characters (String.lowercase_ascii str)


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
