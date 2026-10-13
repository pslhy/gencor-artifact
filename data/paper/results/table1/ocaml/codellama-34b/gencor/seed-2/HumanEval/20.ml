
let rec find_closest_elements (numbers : float list) :  float * float =
    match numbers with
    | [] | [_] -> failwith "List must have at least two elements"
    | first :: rest ->
        let closest_pair = List.fold_left (fun (min_diff, closest_pair) num ->
            let diff = abs (num - first) in
            if diff < min_diff then (diff, (first, num))
            else (min_diff, closest_pair)
        ) (first, first) rest
        in
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
