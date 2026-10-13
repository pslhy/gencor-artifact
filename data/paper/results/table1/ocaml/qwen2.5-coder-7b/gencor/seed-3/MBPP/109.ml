
let rec odd_Equivalent (s : string) (n : int) : int = 
  let rotated = String.concat "" [String.sub s (String.length s - n) n; String.sub s 0 (String.length s - n)] in
  if (int_of_string ("0b" ^ rotated) land 1) = 1 then 1 else 0

let count odd_count rotations =
  let rec aux rotations count =
    match rotations with
    | 0 -> count
    | _ -> aux (rotations - 1) (count + odd_Equivalent "110" rotations)
  in
  aux rotations odd_count

(* Example usage:
let result = count 0 15
*)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the number of numbers with an odd value when rotating a binary string the given number of times. *)
