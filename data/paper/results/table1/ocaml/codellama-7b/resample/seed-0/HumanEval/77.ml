(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes an integer a and returns true *)
(*     if this ingeger is a cube of some integer number. *)
(*     Note: you may assume the input is always valid. *)
(*     Examples: *)
(*     >>> iscube 1 *)
(*     true *)
(*     >>> iscube 2 *)
(*     false *)
(*     >>> iscube (-1) *)
(*     true *)
(*     >>> iscube 64 *)
(*     true *)
(*     >>> iscube 0 *)
(*     true *)
(*     >>> iscube 180 *)
(*     false *)
let rec iscube (a : int) : bool =
  if a = 0 then true
  else if a = 1 then true
  else if a < 0 then iscube (abs a)
  else
    let root = sqrt (float a) in
    let rooti = int_of_float root in
    let residue = a - (rooti * rooti) in
    (residue = 0)

and int_of_float (f : float) : int =
  let rounded = round (f +. 0.5) in
  rounded

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:17: Unbound value "round" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec iscube (a : int) : bool =
  if a = 0 then true
  else if a = 1 then true
  else if a < 0 then iscube (abs a)
  else
    let root = sqrt (float a) in
    let rooti = int_of_float root in
    let residue = a - (rooti * rooti) in
    (residue = 0)

