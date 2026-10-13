let rec remove_dirty_chars (string : string) (second_string : string) : string = 
  let rec helper (chars_to_remove : string) (current_char : char) : bool =
    if chars_to_remove = "" then false
    else if current_char = chars_to_remove.[0] then true
    else helper (chars_to_remove.[1] :: chars_to_remove) current_char
  in
  let rec build_result (acc : string) (chars : string) : string =
    if chars = "" then acc
    else if helper second_string chars.[0] then build_result acc (chars.[1] :: chars)
    else build_result (acc.[0] :: acc) (chars.[1] :: chars)
  in
  let rec reverse_string (s : string) : string =
    if s = "" then ""
    else reverse_string s.[1] :: s.[0]
  in
  reverse_string (build_result "" (reverse_string string))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
