let rec count_distinct_characters (string : string) : int = 
  let lower_string = String.lowercase_ascii string in
  let rec helper (chars : string) (seen : bool array) (count : int) : int =
    if chars = "" then count
    else
      let char_index = Char.code (chars.[0]) - CHAR_a in
      if not seen.(char_index) then
        helper (String.sub chars 1 (String.length chars - 1))
        (Array.set seen char_index true; seen)
        (count + 1)
      else
        helper (String.sub chars 1 (String.length chars - 1)) seen count
  in
  helper lower_string (Array.make (CHAR_z - CHAR_a + 1) false) 0
and CHAR_a = (Char.code 'a') and CHAR_z = (Char.code 'z')


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
