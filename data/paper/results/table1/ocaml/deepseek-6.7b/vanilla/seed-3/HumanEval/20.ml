let rec find_closest_elements (numbers : float list) :  float * float =
  let sorted_numbers = List.sort Float.compare numbers in
  let rec find_closest_internal (numbers_left : float list) (min_diff : float) (min_pair : float * float) : float * float =
    match numbers_left with
    | [] | [_] -> min_pair
    | h1::(h2::t as tail) ->
      let cur_diff = h2 -. h1 in
      let min_diff, min_pair = if cur_diff < min_diff then (cur_diff, (h1, h2)) else (min_diff, min_pair) in
      find_closest_internal tail min_diff min_pair
  in
  let initial_diff = List.hd sorted_numbers -. List.hd (List.tl sorted_numbers) in
  find_closest_internal (List.tl sorted_numbers) initial_diff (List.hd sorted_numbers, List.hd (List.tl sorted_numbers))


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
