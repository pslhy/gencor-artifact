let rec find_closest_elements (numbers : float list) :  float * float = 
  let rec find_closest current_closest remaining_numbers = 
    match remaining_numbers with
    | [] -> current_closest
    | x::xs -> 
      let min_diff, (closest_a, closest_b) = find_closest current_closest xs in
      let diff_a = abs (x - closest_a) in
      let diff_b = abs (x - closest_b) in
      if diff_a < min_diff || (diff_a = min_diff && diff_b < min_diff) then
        if closest_a < x then (closest_a, x)
        else (x, closest_a)
      else
        (closest_a, closest_b)
  in
  let sorted_numbers = List.sort compare numbers in
  let (_, closest_pair) = find_closest (sorted_numbers.(0), sorted_numbers.(1)) (List.tl (List.tl sorted_numbers)) in
  closest_pair


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
