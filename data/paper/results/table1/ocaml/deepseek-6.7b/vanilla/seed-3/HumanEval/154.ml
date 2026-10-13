let rec cycpattern_check (a : string) (b : string) : bool =
  let b_len = String.length b in
  let rec helper (s : string) =
    if a = s then true
    else if s = String.sub a (b_len - 1) (String.length s - 1) ^ String.sub a 0 1 then helper (String.sub s 0 (b_len - 1))
    else if s = String.sub a 0 (b_len - 1) ^ String.sub a (String.length s) (b_len - 1) then helper (String.sub s 1 b_len)
    else false
  in helper b


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
