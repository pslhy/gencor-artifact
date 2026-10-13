let rec rotate_right (list : int list) (m : int) : int list =
  match m = 0, m = List.length list with
  | true, _ | _, true -> list
  | _ ->
    let n = if m < 0 then List.length list + m else m in
    let l1, l2 = List.split_at (List.length list - n) list in
    List.append l2 l1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
