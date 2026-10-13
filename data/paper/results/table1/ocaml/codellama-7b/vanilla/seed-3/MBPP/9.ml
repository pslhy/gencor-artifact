let rec find_Rotations (str : string) : int =
  if str = String.sub str ~pos:1 ~len:(String.length str - 1) then 1
  else
    let rec aux (str : string) (i : int) : int =
      if str = String.sub str ~pos:i ~len:(String.length str - i) then i
      else aux (String.sub str ~pos:i ~len:(String.length str - i)) (i + 1)
    in
    let rotations = aux str 1 in
    rotations + 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
