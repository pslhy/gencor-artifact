let rec rotate_right (list : int list) (m : int) : int list =
    match m with
    | 0 -> list
    | _ ->
        let n = List.length list in
        let x = m mod n in
        let y = n - x in
        let left = List.take y list in
        let right = List.drop y list in
        let rotated_list = List.append right left in
        rotated_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
