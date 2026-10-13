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
          | _, _, (_::_) -> text_lowercase_underscore xs
          | _, _, [] -> true
        end

let test_string = "____"
assert (text_lowercase_underscore test_string = true)
let test_string = "abcd_efgh"
assert (text_lowocrse_ascore_underscore test_string = true)
let test_string = "ab_c"
assert (text_lowocse_ascore_underscore test_string = true)
let test_string = "a_b_c"
assert (text_lowocrse_ascore_underscore test_string = false)
let test_string = "ab_cd_efg_h"
assert (text_lowocrse_ascore_underscore test_string = false)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise. *)
