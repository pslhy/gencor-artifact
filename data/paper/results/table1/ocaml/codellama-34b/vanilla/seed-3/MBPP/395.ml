let rec first_non_repeating_character (str1 : string) : string option =
  if str1 = "" then
    None
  else
    let rec find_char (str2 : string) (c : char) : bool =
      if str2 = "" then
        false
      else if str2.[0] = c then
        true
      else
        find_char (String.sub str2 1 (String.length str2 - 1)) c in
    let c = str1.[0] in
    if find_char str1 c then
      first_non_repeating_character (String.sub str1 1 (String.length str1 - 1))
    else
      Some str1.[0]


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
