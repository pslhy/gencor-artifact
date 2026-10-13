let rec string_xor (a : string) (b : string) : string =
  match a, b with
  | "", "" -> ""
  | a, "" -> a
  | "", b -> b
  | a::as', b::bs' -> (string_of_int ((int_of_char a - 48) lxor (int_of_char b - 48))) ^ string_xor as' bs'

let () =
  Printf.printf "%s\n" (string_xor "010" "110")


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
