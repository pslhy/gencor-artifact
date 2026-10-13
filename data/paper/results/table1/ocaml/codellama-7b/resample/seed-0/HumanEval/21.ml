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
  | _ ->
    let min = List.min_elt numbers in
    let max = List.max_elt numbers in
    let diff = max - min in
    let scaled_numbers = List.map (fun x -> (x - min) / diff) numbers in
    scaled_numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:15: Unbound value "List.min_elt" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec rescale_to_unit (numbers : float list) : float list =
  if List.length numbers = 0 then
    []
  else if List.length numbers = 1 then
    [List.hd numbers / (List.hd numbers - List.min_elt numbers)]
  else
    [List.hd numbers / (List.hd numbers - List.min_elt numbers)] @ (rescale_to_unit (List.tl numbers))

