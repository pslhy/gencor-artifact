let rec correct_bracketing (brackets : string) : bool =
  match brackets with
  | "" -> true
  | '(' :: tl ->
      if tl = "" then false
      else if ')' :: tl = brackets then true
      else correct_bracketing (String.sub tl 1 (String.length tl - 1))

let () =
  let test_string = "())(" in
  let result = correct_bracketing test_string in
  Printf.printf "Running test with string: '%s'...\n" test_string;
  Printf.printf "Result: %b\n" result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     brackets is a string of "(" and ")". *)
(*     return true if every opening bracket has a corresponding closing bracket. *)
(*     >>> correct_bracketing "(" *)
(*     false *)
(*     >>> correct_bracketing "()" *)
(*     true *)
(*     >>> correct_bracketing "(()())" *)
(*     true *)
(*     >>> correct_bracketing ")(()" *)
(*     false *)
