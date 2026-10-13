let rec find_literals (text : string) (pattern : string) :  string * int * int =
  let pattern_length = String.length pattern in
  let rec find_start_end start_index =
    if start_index + pattern_length > String.length text then
      raise Not_found
    else
      let sub_string = String.sub text start_index pattern_length in
      if sub_string = pattern then
        (sub_string, start_index, start_index + pattern_length - 1)
      else
        find_start_end (start_index + 1)
  in
  try find_start_end 0
  with Not_found -> ("", -1, -1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
