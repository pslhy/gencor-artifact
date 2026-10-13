let rec find_closest_elements (numbers : float list) :  float * float = 
  let rec helper pairs min_diff best =
    match pairs with
    | [] -> best
    | (a, b) :: rest ->
      let diff = abs (a - b) in
      if diff < min_diff then
        helper rest diff (min a b, max a b)
      else
        helper rest min_diff best
  in
  let pairs = List.sort compare numbers in
  let rec make_pairs lst =
    match lst with
    | [] | [_] -> []
    | x :: y :: rest -> (x, y) :: make_pairs (y :: rest)
  in
  helper (make_pairs pairs) infinity (0., 0.)


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
