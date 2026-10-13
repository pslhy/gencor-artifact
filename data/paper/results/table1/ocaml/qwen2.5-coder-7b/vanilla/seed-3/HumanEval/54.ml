let rec same_chars (s0 : string) (s1 : string) : bool = 
  let rec helper (s : string) (chars : bool array) : bool = 
    match s with 
    | "" -> true 
    | c :: rest -> if chars.(Char.code c - Char.code 'a') then helper rest chars else false
  in
  let chars0 = Array.make 26 false in
  let chars1 = Array.make 26 false in
  for i = 0 to pred (String.length s0) do
    chars0.(Char.code (String.get s0 i) - Char.code 'a') <- true
  done;
  for i = 0 to pred (String.length s1) do
    chars1.(Char.code (String.get s1 i) - Char.code 'a') <- true
  done;
  helper s0 chars1 && helper s1 chars0


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
