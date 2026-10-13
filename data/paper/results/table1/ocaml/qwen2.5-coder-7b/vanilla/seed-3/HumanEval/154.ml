let rec cycpattern_check (a : string) (b : string) : bool = 
  let len_b = String.length b in
  let rec rotate_and_check i = 
    if i > len_b then
      false
    else
      let rotated_b = String.concat "" [String.sub b i (len_b - i); String.sub b 0 i] in
      if String.contains a rotated_b then
        true
      else
        rotate_and_check (i + 1)
  in
  rotate_and_check 1


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
