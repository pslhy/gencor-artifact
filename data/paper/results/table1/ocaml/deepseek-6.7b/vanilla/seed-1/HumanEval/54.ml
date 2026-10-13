let rec same_chars (s0 : string) (s1 : string) : bool =
  match (s0, s1) with
  | ("", "") -> true
  | (x0, x1) when (String.length s0) <> (String.length s1) -> false
  | (x0, x1) when x0.[0] = x1.[0] -> same_chars (String.sub s0 1 ((String.length s0) - 1)) (String.sub s1 1 ((String.length s1) - 1))
  | (x0, x1) ->
     if (String.contains s1 x0.[0]) then
       same_chars s0 (String.sub s1 1 ((String.length s1) - 1))
     else false


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
