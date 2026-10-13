let rec extract_values (text : string) : string list =
  match text with
  | "" -> []
  | _ ->
    let rec aux (i : int) (acc : string) (text : string) : string list =
      match text.[i] with
      | '"' -> acc :: []
      | '\\' -> aux (i + 1) (acc ^ "\"") text
      | c when c = text.[i] -> aux (i + 1) (acc ^ c) text
      | _ -> aux (i + 1) (acc ^ c) text
    in
    let first_quote = String.index text '"' in
    let last_quote = String.rindex text '"' in
    let value = String.slice text first_quote (last_quote + 1) in
    let new_text = String.slice text (last_quote + 1) (String.length text) in
    value :: extract_values new_text


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
