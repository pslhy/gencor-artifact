(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of numbers (of at least two elements), apply a linear transform to that list, *)
(*     such that the smallest number will become 0 and the largest will become 1 *)
(*     >>> rescale_to_unit [1.0; 2.0; 3.0; 4.0; 5.0] *)
(*     [0.0; 0.25; 0.5; 0.75; 1.0] *)
let rec rescale_to_unit (numbers : float list) : float list =
  match numbers with
  | [] -> []
  | x :: xs -> 
        let min_val = List.min_elt numbers in
        let max_val = List.max_elt numbers in
        match (min_val, max_val) with
        | (Some min, Some max) -> (x -. min) /. (max -. min) :: rescale_to_unit xs
        | _ -> failwith "Couldn't determine min and max values"
  

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:23: Unbound value "List.min_elt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
  match numbers with
  | [] -> []
  | x :: xs -> 
        let min_val = List.fold_left min Float.infinity numbers in
        let max_val = List.fold_left max (Float.neg_infinity) numbers in
        (x -. min_val) /. (max_val -. min_val) :: rescale_to_unit xs

let test = rescale_to_unit [1.0; 2.0; 3.0; 4.0; 5.0]

