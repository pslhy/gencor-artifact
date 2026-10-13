let rec first_non_repeating_character (str1 : string) : string option =
  if String.length str1 = 0 then None
  else
    let ch1 = str1.[0] in
    let is_repeated =
      let index = str1 |> String.index_from str1 1 ch1 in
      index > String.length str1
    in
    if is_repeated then first_non_repeating_character (String.shift_right str1 1)
    else Some ch1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
