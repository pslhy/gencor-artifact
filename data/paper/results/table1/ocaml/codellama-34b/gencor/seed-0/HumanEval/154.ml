
let rec cycpattern_check (a : string) (b : string) : bool =
    if b = "" then true
    else if a = "" then false
    else if String.contains a b.[0] then
        if String.is_valid_utf_8 a then
            cycpattern_check (String.sub a 1 (String.length a - 1)) b
        else
            cycpattern_check (String.sub a 1 (String.length a - 1)) (String.sub b 1 (String.length b - 1))
    else
        cycpattern_check (String.sub a 1 (String.length a - 1)) b

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
