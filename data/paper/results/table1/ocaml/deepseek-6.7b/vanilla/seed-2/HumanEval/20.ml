let rec find_closest_elements (numbers : float list) :  float * float =
  let sorted = List.sort compare numbers in
  let rec find_min_difference l min_difference min_pair =
    match l with
    | a :: (b :: _ as tail) ->
        let diff = b -. a in
        if diff < min_difference then find_min_difference tail diff (a, b)
        else find_min_difference tail min_difference min_pair
    | _ -> min_pair
  in
  find_min_difference sorted (List.hd sorted +. List.hd (List.tl sorted)) (List.hd sorted, List.hd (List.tl sorted))


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
