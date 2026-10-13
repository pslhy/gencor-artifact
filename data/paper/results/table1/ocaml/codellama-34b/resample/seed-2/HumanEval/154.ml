(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec cycpattern_check (a : string) (b : string) : bool =
    let len = String.length b in
    let rec rotate (s : string) : string =
        if String.length s <= len then s
        else String.sub s 1 (len - 1) ^ st.charAt(0) ^ String.sub s 2 (String.length s - 2) in
    rotate b = a || cycpattern_check (rotate b) a

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:41: Unbound value "st" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec cycpattern_check (a : string) (b : string) : bool =
    let len = String.length b in
    let rec rotate (s : string) : string =
        if String.length s <= len then s
        else String.sub s 1 (len - 1) ^ String.sub s 2 (String.length s - 2) in
    rotate b = a || cycpattern_check (rotate b) a

