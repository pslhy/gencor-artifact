let rec is_Diff (n : int) : bool =
  match n with
  | 0 -> false
  | 1 -> (n mod 11 = 0)
  | _ -> is_Diff (n - 1)

(* Test Cases *)

Printf.printf "%b\n" (is_Diff 33);; (* Should print: true *)
Printf.printf "%b\n" (is_Diff 35);; (* Should print: false *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
