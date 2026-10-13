
let rec odd_Equivalent (s : string) (n : int) : int =
match n with
0 -> 0
| _ -> let x = odd_Equivalent s (n - 1) in
  let y = Int.logand x 0b1 in
  let z = Int.shift_left (Int.shift_right_logical x 1) 1 in
  y + z

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
