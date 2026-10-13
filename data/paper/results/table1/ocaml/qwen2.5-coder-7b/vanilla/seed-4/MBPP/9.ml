let rec find_Rotations (str : string) : int = 
  let len = String.length str in
  let rec helper (rotate_count : int) (new_str : string) : int =
    let rotated_str = String.concat "" [String.sub new_str (len - rotate_count) rotate_count; String.sub new_str 0 (len - rotate_count)] in
    if rotated_str = str && rotate_count > 1 then rotate_count else helper (rotate_count + 1) rotated_str
  in
  helper 1 str;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum number of rotations (greater than 0) required to get the same string. *)
