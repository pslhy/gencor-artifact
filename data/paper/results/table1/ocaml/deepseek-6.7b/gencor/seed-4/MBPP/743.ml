
let rec rotate_right (list : int list) (m : int) : int list =
  match list with
  |[] -> []
  |_ -> let len = List.length list in
        let m' = m mod len in
        let first_part = List.rev (List.rev_map fst (List.split (List.init m' (fun i -> List.nth_opt list (len - m' + i))))) in
        let second_part = List.rev (List.rev_map fst (List.split (List.init (len - m') (fun i -> List.nth_opt list i)))) in
        List.append first_part second_part

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/mlthon-program-right-rotate-list-n/ *)
