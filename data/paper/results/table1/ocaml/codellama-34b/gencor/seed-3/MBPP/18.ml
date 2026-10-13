
let rec remove_dirty_chars (string : string) (second_string : string) : string =
  if second_string = "" then
    string
  else
    let first_char = second_string.[0] in
    let removed_char_str = String.sub string 1 (String.length string - 1) in
    let rec helper s =
      if s = "" then
        []
      else if s.[0] = first_char then
        helper (String.sub s 1 (String.length s - 1))
      else
        s.[0] :: helper (String.sub s 1 (String.length s - 1))
    in
    let clean_chars = helper removed_char_str in
    String.of_seq (List.to_seq clean_chars)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove characters from the first string which are present in the second string. *)
