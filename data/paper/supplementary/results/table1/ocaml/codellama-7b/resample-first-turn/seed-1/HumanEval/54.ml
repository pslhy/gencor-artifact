let rec same_chars (s0 : string) (s1 : string) : bool =
  let s0_list = String.to_list s0 in
  let s1_list = String.to_list s1 in
  let rec check_chars (s0 : string list) (s1 : string list) : bool =
    match (s0, s1) with
    | ([] , []) -> true
    | ([], _) | (_, []) -> false
    | (h0 :: t0, h1 :: t1) -> if h0 = h1 then check_chars t0 t1 else false
  in
  check_chars s0_list s1_list


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
