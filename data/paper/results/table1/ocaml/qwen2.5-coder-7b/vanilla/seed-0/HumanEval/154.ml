let rec cycpattern_check (a : string) (b : string) : bool = 
  let len_b = String.length b in
  let rec rotate_and_check (s : string) : bool = 
    if String.length s > len_b then false
    else if String.contains a s then true
    else rotate_and_check (String.tail s ^ String.hd s)
  in
  let rec rotate (s : string) (n : int) : string = 
    if n = 0 then s
    else rotate (String.tail s ^ String.hd s) (n - 1)
  in
  rotate_and_check (rotate b (String.length b - 1))

(* Test cases *)
let _ = assert (cycpattern_check "abcd" "abd" = false)
let _ = assert (cycpattern_check "hello" "ell" = true)
let _ = assert (cycpattern_check "whassup" "psus" = false)
let _ = assert (cycpattern_check "abab" "baa" = true)
let _ = assert (cycpattern_check "efef" "eeff" = false)
let _ = assert (cycpattern_check "himenss" "simen" = true)


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
