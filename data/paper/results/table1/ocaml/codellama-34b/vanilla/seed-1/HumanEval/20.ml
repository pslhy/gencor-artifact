let rec find_closest_elements (numbers : float list) :  float * float =
    let rec aux min_diff (nums : float list) :  float * float =
        match nums with
        | [] -> (0.0, 0.0)
        | [x] -> (x, x)
        | x1 :: x2 :: xs ->
            let diff = abs (x1 - x2) in
            if diff < min_diff then
                aux diff (x2 :: xs)
            else
                aux min_diff (x2 :: xs)
    in
    aux Float.max_value numbers


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
