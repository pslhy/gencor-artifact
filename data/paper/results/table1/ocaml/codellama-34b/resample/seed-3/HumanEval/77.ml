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
  if a = 0 then
    true
  else if a mod 3 != 0 then
    false
  else
    let rec loop (i : int) (sum : int) : bool =
      if i >= a then
        sum = a
      else
        let newsum = sum + 3 in
        if newsum <= a then
          loop (i + 1) newsum
        else
          false
    in
    loop 1 0

