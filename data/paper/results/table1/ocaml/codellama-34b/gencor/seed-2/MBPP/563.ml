
let rec extract_values (text : string) : string list =
    let open String in
    match split_on_char '"' text with
    | hd :: tl ->
      begin match hd with
      | "" -> extract_values (hd ^ "\"" ^ tl)
      | _ ->
        let value = String.sub hd 0 (String.length hd - 1) in
        let rest = String.sub tl 1 (String.length tl - 1) in
        value :: extract_values rest
      end
    | [] -> []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract values between quotation marks from a string. *)
