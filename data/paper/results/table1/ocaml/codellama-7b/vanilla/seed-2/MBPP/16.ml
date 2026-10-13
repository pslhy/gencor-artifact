let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> false
  | _ ->
      let is_valid_char c =
        match c with
        | 'a' .. 'z' -> true
        | _ -> false
      in
      let sub_text = String.sub text 0 ((String.length text) - 1) in
      if is_valid_char (String.get text 0) then
        let sub_text = String.sub text 1 ((String.length sub_text) - 1) in
        if String.exists (fun c -> not (is_valid_char c)) sub_text then
          false
        else
          text_lowercase_underscore sub_text
      else
        false

let () =
  assert (text_lowercase_underscore "abc" = true);
  assert (text_lowercase_underscore "" = false);
  assert (text_lowercase_underscore "a_b_c" = true);
  assert (text_lowercase_underscore "a_b" = false);
  assert (text_lowercase_underscore "a_1_c" = false);
  assert (text_lowercase_underscore "a_b_1" = false)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
