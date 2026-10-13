let rec find_min_diff (arr : int list) (n : int) : int = 
  if n < 2 then raise (Invalid_argument "List must contain at least two elements")
  else 
    let rec helper (lst : int list) (min_diff : int) : int =
      match lst with
      | [] -> min_diff
      | x::xs -> 
          let min_diff' = List.fold_left (fun acc y -> min acc (abs (x - y))) min_diff xs in
          helper xs min_diff'
    in
    helper (List.sort compare arr) (max_int)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
