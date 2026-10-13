let rec check_integer (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let rec parse_digits (text : string) (acc : int) : int =
        match text with
        | "" -> acc
        | '0' .. '9' :: text_tail -> parse_digits text_tail (acc * 10 + (Char.code ch - Char.code '0'))
        | _ :: text_tail -> parse_digits text_tail acc
      in
      let len = String.length text in
      let n = parse_digits text 0 in
      (len > 0) && (n >= 0) && (len = String.length (string_of_int n))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
