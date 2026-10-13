(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
let rec min_Jumps (steps :  int * int) (d : int) : float =
  if d = 0) then
    0
  else if (steps, 0) is (0, 0) then
    infinity
  else
    floorf(steps, 1) + min_Jumps (steps, d - 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec min_Jumps (steps :  int * int) (d : int) : float =
  if d = 0 then
    0.0
  else if fst steps = 0 then
    infinity
  else
    fst steps + min_Jumps (snd steps, d - 1)

