let rec flip_case (string : string) : string =
  match string with
  | "" -> ""
  | x :: xs ->
        let new_char =
          if x >= 'A' && x <= 'Z' then
            Char.lowercase x
          else if x >= 'a' && x <= 'z' then
            Char.uppercase x
          else
            x
        in new_char ^ flip_case xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given string, flip lowercase characters to uppercase and uppercase to lowercase. *)
(*     >>> flip_case "Hello" *)
(*     "hELLO" *)
