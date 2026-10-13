
let rec same_chars (s0 : string) (s1 : string) : bool =
  if String.length s0 != String.length s1 then
    false
  else if s0 = "" && s1 = "" then
    true
  else
    match s0.[0], s1.[0] with
    | 'a', 'a'
    | 'b', 'b'
    | 'c', 'c'
    | 'd', 'd' -> same_chars s0.[1..(String.length s0 - 1)] s1.[1..(String.length s1 - 1)]
    | _, _ -> false

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
