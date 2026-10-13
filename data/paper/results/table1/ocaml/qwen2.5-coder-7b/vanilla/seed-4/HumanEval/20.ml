let rec find_closest_elements (numbers : float list) :  float * float = 
  let rec find_closest acc = function
    | [] -> acc
    | x::xs -> 
      let min_diff, (a, b) = List.fold_left (fun (md, (ma, mb)) y -> 
        let diff = abs (x -. y) in
        if diff < md then (diff, (min x y, max x y)) else (md, (ma, mb))) ( acc, acc ) xs in
      find_closest (min_diff, (a, b)) xs
  in
  find_closest (Float.max_float, (0.0, 0.0)) numbers


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
