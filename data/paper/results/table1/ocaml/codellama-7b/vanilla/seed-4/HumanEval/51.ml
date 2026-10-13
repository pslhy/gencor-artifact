let rec remove_vowels (text : string) : string =
  if text = "" then
    ""
  else
    let first_char = text.[0] in
    let rest = remove_vowels (String.sub text 1 (String.length text - 1)) in
    if first_char = 'a' || first_char = 'e' || first_char = 'i' || first_char = 'o' || first_char = 'u' then
      rest
    else
      first_char ^ rest

let _ =
  print_endline (remove_vowels "");
  print_endline (remove_vowels "abcdef");
  print_endline (remove_vowels "aaaaa");
  print_endline (remove_vowels "aaBAA");
  print_endline (remove_vowels "zbcd")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     remove_vowels is a function that takes string and returns string without vowels. *)
(*     >>> remove_vowels "" *)
(*     "" *)
(*     >>> remove_vowels "abcdef" *)
(*     "bcdf" *)
(*     >>> remove_vowels "aaaaa" *)
(*     "" *)
(*     >>> remove_vowels "aaBAA" *)
(*     "B" *)
(*     >>> remove_vowels "zbcd" *)
(*     "zbcd" *)
