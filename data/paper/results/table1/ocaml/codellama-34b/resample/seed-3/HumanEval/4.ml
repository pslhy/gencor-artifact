(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     For a given list of input numbers, calculate Mean Absolute Deviation *)
(*     around the mean of this dataset. *)
(*     Mean Absolute Deviation is the average absolute difference between each *)
(*     element and a centerpoint (mean in this case): *)
(*     MAD = average | x - x_mean | *)
(*     >>> mean_absolute_deviation [1.0; 2.0; 3.0; 4.0] *)
(*     1.0 *)
let rec mean_absolute_deviation (numbers : float list) : float =
  let avg =
    numbers
    |> List.map ~f:(fun x -> x -. mean numbers)
    |> List.reduce ~f:(fun x y -> x +. y)
    |> (fun x -> x /. float (List.length numbers))
  in
  List.fold_left ~init:0.0 ~f:(fun acc x -> acc +. abs_float (x -. avg)) ~numbers

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:8: Unbound value "List.reduce" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec mean_absolute_deviation (numbers : float list) : float =
  let avg =
    numbers
    |> List.map ~f:(fun x -> x -. mean numbers)
    |> List.fold_left ~init:0.0 ~f:(fun acc x -> acc +. x)
    |> (fun x -> x /. float (List.length numbers))
  in
  List.fold_left ~init:0.0 ~f:(fun acc x -> acc +. abs_float (x -. avg)) ~numbers

