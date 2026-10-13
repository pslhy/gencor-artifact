
let rec rotate_right (list : int list) (m : int) : int list = 
    let length = List.length list in
    let actual_rotation = m mod length in
    let (front, back) = List.split list ((-actual_rotation) mod length) in
    back @ front

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
