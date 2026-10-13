let rec cycpattern_check (a : string) (b : string) : bool =
    let b_rotations = rotations b in
    List.mem b_rotations a
and rotations (s : string) : string list =
    if String.length s = 0 then [] else
        let char_list = (String.init (String.length s) (String.get s)) in
        let rec rotate (s : string) (idx : int) : string =
            if idx < String.length s then (String.sub s idx (String.length s - idx) ^ String.sub s 0 (idx (String.length s - idx))) else s in
        List.assoc s char_list (rotate char_list (String.length s))

let string_contains (a : string) (b : string) : bool =
    if String.length b = 0 then true else
        let find_len = String.length b in
        let rec find (a : string) (b : string) (idx : int) : bool =
            if idx + find_len > String.length a then false else
            if String.sub a idx find_len = b then true else find a b (idx + 1) in
        find a b 0

let cycpattern_check (a : string) (b : string) : bool =
    if String.length a < String.length b then false else if string_contains a b then true else
        let b_rotations = rotations b in
        List.exists (fun x -> string_contains a x) b_rotations

let _ =
    let test_case0 = "abcd", "abd" in
    let test_case1 = "hello", "ell" in
    let test_case2 = "whassup", "psus" in
    let test_case3 = "abab", "baa" in
    let test_case4 = "efef", "eeff" in
    let test_case5 = "abab", "baa" in
    test_case0 = cycpattern_check test_case0 && test_case1 = cycpattern_check test_case1 &&
        test_case2 = cycpattern_check test_case2 && test_case3 = cycpattern_check test_case3 &&
        test_case4 = cycpattern_check test_case4 && test_case5 = cycpattern_check test_case5


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
