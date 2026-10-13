let rec find_min_diff (arr : int list) (n : int) : int =
  match arr with
  | [] -> failwith "Empty list"
  | [x] -> failwith "Only one element"
  | x :: xs ->
    let rec find_diff (arr : int list) (n : int) (min_diff : int) : int =
      match arr with
      | [] -> min_diff
      | y :: ys ->
        let diff = abs (x - y) in
        if diff < min_diff then find_diff ys n diff else find_diff ys n min_diff
    in find_diff xs n (abs (x - List.hd xs))

;;

print_int (find_min_diff [1; 5; 3; 19; 18; 25] 6);; 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the minimum difference between any two elements in a given list. https://www.geeksforgeeks.org/find-minimum-difference-pair/ *)
