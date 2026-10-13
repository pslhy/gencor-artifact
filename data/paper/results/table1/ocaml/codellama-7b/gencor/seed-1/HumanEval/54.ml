
let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0_list = String.to_seq s0 in
  let s1_list = String.to_seq s1 in
  let rec same_chars_impl (s0_list, s1_list) : bool =
    match (s0_list, s1_list) with
    | (Seq.Nil, Seq.Nil) -> true
    | (Seq.Nil, _ | _, Seq.Nil) -> false
    | (Seq.Cons (c0, s0'), Seq.Cons (c1, s1')) ->
      if c0 = c1 then
        same_chars_impl (Seq.append s0' Seq.empty, Seq.append s1' Seq.empty)
      else
        false
  in
  same_chars_impl (s0_list, s1_list)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Check if two words have the same characters. *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddeddabc" *)
(*     true *)
(*     >>> same_chars "abcd" "dddddddabc" *)
(*     true *)
(*     >>> same_chars "dddddddabc" "abcd" *)
(*     true *)
(*     >>> same_chars "eabcd" "dddddddabc" *)
(*     false *)
(*     >>> same_chars "abcd" "dddddddabce" *)
(*     false *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddddabc" *)
(*     false *)
