
let rec rotate_right (list : int list) (m : int) : int list = 
    let len = List.length list in 
    if len = 0 then [] else 
    let x = len - m mod len in 
    if x = len then list else 
    let list1 = List.rev(List.tl(List.rev list)) in
    List.append( List.tl(List.rev list1),(List.hd(list)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
