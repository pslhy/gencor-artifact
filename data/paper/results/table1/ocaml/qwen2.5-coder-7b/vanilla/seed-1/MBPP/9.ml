let rec find_Rotations (str : string) : int = 
  let len = String.length str in
  let rec rotate_and_compare (start : int) (rots : int) : int =
    if start >= len then rots
    else 
      let rotated = String.sub str start len ^ String.sub str 0 start in
      if rotated = str then rots
      else rotate_and_compare (start + 1) (rots + 1)
  in
  if len = 0 then 0
  else rotate_and_compare 1 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
