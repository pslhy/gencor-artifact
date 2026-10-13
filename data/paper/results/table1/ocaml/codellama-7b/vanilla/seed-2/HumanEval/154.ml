let rec cycpattern_check (a : string) (b : string) : bool =
  let len_a = String.length a in
  let len_b = String.length b in
  if len_b > len_a then
    false
  else
    let rec check_rotation (i : int) (j : int) : bool =
      if i = len_a then
        false
      else if String.contains_from a i b 0 len_b then
        true
      else
        check_rotation (i + 1) (j + 1)
    in
    check_rotation 0 0 || cycpattern_check a (String.sub b 0 (len_b - 1))

let _ =
  let test_cases : (string * string * bool) list =
    [
      ("abcde", "abd", false);
      ("hello", "ell", true);
      ("whassup", "psus", false);
      ("abab", "baa", true);
      ("efef", "eeff", false);
      ("himenss", "simen", true);
    ]
  in
  let print_result (a, b, expected) =
    let result = cycpattern_check a b in
    Printf.printf "input: %s, %s, expected: %b, result: %b\n" a b expected result
  in
  List.iter print_result test_cases


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
