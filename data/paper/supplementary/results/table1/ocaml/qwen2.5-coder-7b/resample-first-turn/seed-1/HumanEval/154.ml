let rec cycpattern_check (a : string) (b : string) : bool = 
  let len_a = String.length a in
  let len_b = String.length b in
  if len_a < len_b then false else
  let rec check_rotations pos =
    if pos = len_b then false else
    let rotated_b = String.substring b pos (len_b - pos) ^ String.substring b 0 pos in
    if String.contains a rotated_b then true else check_rotations (pos + 1)
  in
  check_rotations 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given 2 words. You need to return true if the second word or any of its rotations is a substring in the first word *)
(*     >>> cycpattern_check "abcd" "abd" *)
(*     false *)
(*     >>> cycpattern_check "hello" "ell" *)
(*     true *)
(*     >>> cycpattern_check "whassup" "psus" *)
(*     false *)
(*     >>> cycpattern_check "abab" "baa" *)
(*     true *)
(*     >>> cycpattern_check "efef" "eeff" *)
(*     false *)
(*     >>> cycpattern_check "himenss" "simen" *)
(*     true *)
