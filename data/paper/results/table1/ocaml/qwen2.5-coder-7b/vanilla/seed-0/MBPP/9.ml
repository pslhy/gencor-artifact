let rec find_Rotations (str : string) : int = 
  let len = String.length str in
  let rec rotate_left s n = 
    let prefix = String.sub s 0 n in
    let suffix = String.sub s n (len - n) in
    suffix ^ prefix
  and find_rotation s idx rotations = 
    if s = rotate_left str idx then rotations
    else find_rotation s (idx + 1) (rotations + 1)
  in
  if str = "" then 0 else find_rotation str 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
