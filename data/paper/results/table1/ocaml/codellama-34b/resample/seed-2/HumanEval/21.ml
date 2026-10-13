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
    | [] | [_] -> []
    | min :: max :: _ ->
      let min = Float.to_bits min in
      let max = Float.to_bits max in
      let scale = max - min in
      List.map (fun x -> ((Float.to_bits x) - min) / scale) numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:17: Unbound value "Float.to_bits" *)
(*     Hint: Did you mean "to_int"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
    match numbers with
    | [] | [_] -> []
    | min :: max :: _ ->
      let min = Float.to_int min in
      let max = Float.to_int max in
      let scale = max - min in
      List.map (fun x -> Float.to_int (x /. scale)) numbers

