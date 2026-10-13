let rec find_closest_elements (numbers : float list) :  float * float =
  match numbers with
  | first :: (second :: rest) ->
    (find_closest_elements_helper (first, second) rest)
  | _ -> (0.0, 0.0)

and find_closest_elements_helper (min_pair : float * float) 
                                  (numbers : float list) 
                                  : float * float =
  match numbers with
  | first :: rest -> 
    let (min_first, min_second) = min_pair in
    if first -. min_first < min_second -. min_first || min_second -. min_first < 0.0 then
      find_closest_elements_helper (min_first, first) rest
    else 
      find_closest_elements_helper min_pair rest
  | [] -> min_pair


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
