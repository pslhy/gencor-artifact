let rec text_match_wordz_middle (text : string) : bool = 
  let rec helper (chars : char list) : bool = 
    match chars with
    | [] | ['_'] | ['_'; '_'] -> true
    | '_' :: rest -> helper rest
    | current :: rest -> current = 'z' || helper rest in
  let chars = text_to_char_list text in
  helper (chars_to_text chars)

let text_to_char_list (text : string) : char list =
  let rec helper (chars : char list) : char list = 
    match chars with
    | [] -> chars
    | c :: cs -> c :: helper cs in
  helper (List.rev (List.of_seq (String.to_seq text)))

let chars_to_text (chars : char list) : string =
  let rec helper (chars : char list) : string = 
    match chars with
    | [] -> ""
    | c :: cs -> String.make 1 c ^ helper cs in
  helper (List.rev chars)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that checks if a strings contains 'z', except at the start and end of the word. *)
