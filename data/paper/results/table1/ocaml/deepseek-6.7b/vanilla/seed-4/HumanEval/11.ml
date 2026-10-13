let rec string_xor (a : string) (b : string) : string =
  match a, b with
  | "", "" -> ""
  | x, "" -> x (* If we reach this point, strings are not the same length. The rest part is all 0s. *)
  | "", y -> y (* If we reach this point, strings are not the same length. The rest part is all 0s. *)
  | x::xs, y::ys -> (string_of_int ((int_of_string x) lxor (int_of_string y))) ^ string_xor xs ys


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
