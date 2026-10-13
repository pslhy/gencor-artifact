
let rec cycpattern_check (a : string) (b : string) : bool = 
  let len_a = String.length a in
  let len_b = String.length b in
  if len_b > len_a then false
  else
    let rec check rotations =
      match rotations with
      | 0 -> a |> String.contains_from b 0
      | _ ->
          let b_rotated = b ^ b in
          let new_b = String.sub b_rotated 1 (len_b - 1) in
          (a |> String.contains_from b_rotated 1 (len_b - 1)) || check (rotations - 1)
    in
    check len_b

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
