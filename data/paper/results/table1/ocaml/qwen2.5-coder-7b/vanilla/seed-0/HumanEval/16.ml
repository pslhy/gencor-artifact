let rec count_distinct_characters (string : string) : int = 
  let lowercased_string = String.lowercase_ascii string in
  let rec helper (seen : bool array) (index : int) : int =
    if index = String.length lowercased_string then
      let count = ref 0 in
      Array.iteri (fun i b -> if b then incr count) seen;
      !count
    else
      let char = String.get lowercased_string index in
      let char_index = char - 'a' in
      helper (Array.set seen char_index true; seen) (index + 1)
  in
  helper (Array.make 26 false) 0

(* Test cases *)
let _ = assert (count_distinct_characters "xyzXYZ" = 3)
let _ = assert (count_distinct_characters "Jerry" = 4)


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
