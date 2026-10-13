
let rec cycpattern_check (a : string) (b : string) : bool =
  let len_a = String.length a in
  let len_b = String.length b in
  if len_a < len_b then false
  else
    let rec aux i =
      if i = len_b then true
      else
        if String.sub a 0 len_b = String.sub b i (len_b - i) then
          aux (i + 1)
        else
          false in
    if String.sub a 0 len_b = b || aux 1 then true
    else
      let b_rev = String.sub (String.init len_b (fun i -> String.get b (len_b - i - 1))) 0 len_b in
      if String.sub a 0 len_b = b_rev || aux 1 then true
      else false;;

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
