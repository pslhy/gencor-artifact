let rec cycpattern_check (a : string) (b : string) : bool =
  if b = "" then true
  else if a = "" then false
  else if String.contains a b then true
  else cycpattern_check a (String.sub b 1 (String.length b - 1))

let rotate (a : string) (by : int) : string =
  String.sub a by (String.length a - by) ^ String.sub a 0 by

let cycpattern_check (a : string) (b : string) : bool =
  if a = "" || b = "" then false
  else if String.contains a b then true
  else cycpattern_check a (rotate b 1)

let () =
  print_endline (if cycpattern_check "python" "onpy" then "true" else "false")


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
