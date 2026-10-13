let rec rotate_right (list : int list) (m : int) : int list = 
  let size = List.length list in
  let real_rotation = m mod size in
  let rec split_at n = function
    | [] -> ([], [])
    | x::xs as l ->
        if n = 0 then (l, [])
        else match split_at (n-1) xs with
          | (ys, zs) -> (ys, x::zs)
  in
  let (left, right) = split_at (size - real_rotation) list in
  right @ left


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
