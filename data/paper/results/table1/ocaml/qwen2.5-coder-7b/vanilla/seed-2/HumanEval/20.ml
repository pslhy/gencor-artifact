let rec find_closest_elements (numbers : float list) :  float * float = 
    let rec find_closest_pair (lst : float list) (min_diff : float) (closest_pair : float * float) : float * float =
        match lst with
        | [] | [_] -> closest_pair
        | h1::t1 ->
            let rec find_closest_in_rest (lst : float list) (min_diff : float) (closest_pair : float * float) : float * float =
                match lst with
                | [] -> closest_pair
                | h2::t2 ->
                    let diff = abs (h1 -. h2) in
                    if diff < min_diff then find_closest_in_rest t2 diff (h1, h2)
                    else find_closest_in_rest t2 min_diff closest_pair
            in
            let new_pair = find_closest_in_rest t1 min_diff closest_pair in
            find_closest_pair t1 min_diff new_pair
    in
    find_closest_pair numbers infinity (numbers.[0], numbers.[1])


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
