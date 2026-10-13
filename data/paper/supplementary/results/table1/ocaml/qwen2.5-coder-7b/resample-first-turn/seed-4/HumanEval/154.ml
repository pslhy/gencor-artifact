let rec cycpattern_check (a : string) (b : string) : bool = 
  let len_a = String.length a in
  let len_b = String.length b in
  if len_b > len_a then false
  else
    let rec check rotations =
      match rotations with
      | 0 -> a |> String.contains_sub b 0 len_b
      | _ -> 
          let new_b = b |> String.append (String.make 1 (String.get b 0)) |> String.sub 1 len_b in
          (a |> String.contains_sub new_b 0 len_b) || check (rotations - 1)
    in
    check (len_b - 1)


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
