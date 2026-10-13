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
    let ( << ) a b = a +. b in
    numbers |> List.fold_left (fun acc x -> acc +. (x -. List.mean numbers)) 0.0 <</SIZE>>
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:91: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec mean_absolute_deviation (numbers : float list) : float = 
    let ( << ) a b = a +. b in
    let avg = List.fold_left (fun acc x -> acc +. x) numbers 0.0 /. (float_of_int (List.length numbers) in
    List.fold_left (fun acc x -> acc +. (x -. avg)) 0.0 /. (float_of_int (List.length numbers))

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:105: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec mean_absolute_deviation (numbers : float list) : float =
    let avg = List.fold_left (fun acc x -> acc +. x) numbers 0.0 /. (float_of_int (List.length numbers)) in
    List.fold_left (fun acc x -> acc +. (x -. avg)) 0.0 /. (float_of_int (List.length numbers))

