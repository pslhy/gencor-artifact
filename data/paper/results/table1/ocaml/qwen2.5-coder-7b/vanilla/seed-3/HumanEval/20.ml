let rec find_closest_elements (numbers : float list) :  float * float = 
  let rec helper (lst : float list) (min_diff : float) (closest : float * float) : float * float =
    match lst with
    | [] -> closest
    | x::xs -> 
        let rec find_min_diff (lst : float list) (diff : float) (min_diff : float) (closest : float * float) : float * float =
          match lst with
          | [] -> closest
          | y::ys -> 
              let new_diff = abs (x -. y) in
              if new_diff < diff then
                find_min_diff ys new_diff new_diff (x, y)
              else
                find_min_diff ys diff min_diff closest
        in
        let new_closest = find_min_diff xs (min_diff /. 2.0) min_diff closest in
        helper xs (min_diff /. 2.0) new_closest
  in
  let sorted_numbers = List.sort (fun a b -> compare a b) numbers in
  helper sorted_numbers (float_max_int) (sorted_numbers.(0), sorted_numbers.(1))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a supplied list of numbers (of length at least two) select and return two that are the closest to each *)
(*     other and return them in order (smaller number, larger number). *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.2] *)
(*     (2.0, 2.2) *)
(*     >>> find_closest_elements [1.0; 2.0; 3.0; 4.0; 5.0; 2.0] *)
(*     (2.0, 2.0) *)
