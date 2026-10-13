let rec replace_spaces (string : string) : string =
  match string with
  | "" -> ""
  | _ ->
      let head = String.sub string 0 1 in
      let tail = String.sub string 1 (String.length string - 1) in
      if head = " " then
        "%20" ^ replace_spaces tail
      else
        head ^ replace_spaces tail


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to replace all spaces in the given string with '%20'. *)
