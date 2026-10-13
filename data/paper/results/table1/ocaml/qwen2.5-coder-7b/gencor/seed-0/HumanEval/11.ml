
let rec string_xor (a : string) (b : string) : string = 
  let rec xor_helper (a : char list) (b : char list) (res : char list) : char list =
    match (a, b) with
    | ([], []) -> List.rev res
    | (a1::a2, b1::b2) -> xor_helper a2 b2 (char_of_int ((int_of_char a1 lxor int_of_char b1) :: res))
    | _ -> invalid_arg "Inputs must be of the same length"
  in
  let len = min (String.length a) (String.length b) in
  let a_list = String.to_seq a |> Seq.take len |> Seq.to_dispenser
string_xor "010" "110"
(* Output: "100" *)
in
string_xor "10101" "11011"
(* Output: "01110" *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Input are two strings a and b consisting only of 1s and 0s. *)
(*     Perform binary XOR on these inputs and return result also as a string. *)
(*     >>> string_xor "010" "110" *)
(*     "100" *)
