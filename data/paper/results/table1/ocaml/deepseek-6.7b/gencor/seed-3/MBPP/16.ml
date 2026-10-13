
let rec text_lowercase_underscore (text : string) : bool =
  match text with
  | "" -> true
  | x :: xs -> 
        let is_underscore = x = '_' in
        let is_lowercase_letter = 'a' <= x && x <= 'z' in
        begin
          match is_underscore, is_lowercase_letter, xs with
          | true, _, (_::_::_) -> false
          | true, true, tl -> text_lowercase_underscore tl
          | false, true, (_::_::_) -> false
          | false, true, tl -> text_lowercase_underscore tl
          | _, _, (_::_) -> text_lowercase_underscore true
          | _, _, _ -> true
        end

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
