let rec find_adverb_position (text : string) :  int * int * string =
  let len = String.length text in
  let rec helper start_pos end_pos =
    if end_pos >= len then (start_pos, end_pos - start_pos, "")
    else if String.lowercase_ascii (String.sub text start_pos 4) = "very" then (start_pos, end_pos - start_pos, "very")
    else if String.lowercase_ascii (String.sub text start_pos 3) = "not" then (start_pos, end_pos - start_pos, "not")
    else if String.lowercase_ascii (String.sub text start_pos 2) = "so" then (start_pos, end_pos - start_pos, "so")
    else helper (start_pos + 1) (end_pos + 1)
  in
  helper 0 4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb and their positions in a given sentence. *)
