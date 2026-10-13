(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
let rec rotate_right (list : int list) (m : int) : int list = 
    let len = List.length list in 
    if len = 0 then [] else 
    let x = len - m mod len in 
    if x = len then list else 
    let list1 = List.sub_list list 0 x and list2 = 
    List.sub_list list x (len - x) in 
    list2 @ list1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:17: Unbound value "List.sub_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rotate_right (list : int list) (m : int) : int list = 
    let len = List.length list in 
    if len = 0 then [] else 
    let x = len - m mod len in 
    if x = len then list else
    let list1 = List.hd list + x and list2 = List.hd (List.tl list + x) in 
    list2 @ list1

