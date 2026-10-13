let rec replace_char (str1 : string) (ch : string) (newch : string) : string =
  match str1 with
  | "" -> ""
  | str1 ->
    if String.length ch = 0 then
      replace_char (String.sub str1 1 (String.length str1 - 1)) ch newch
    else
      let first, rest = String.sub str1 0 1, String.sub str1 1 (String.length str1 - 1) in
      if first = ch then
        newch ^ replace_char rest ch newch
      else
        first ^ replace_char rest ch newch


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace characters in a string. *)
