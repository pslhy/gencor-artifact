let rec mean_absolute_deviation (numbers : float list) : float =
  let rec sum_list (numbers : float list) (sum : float) : float =
    match numbers with
    | [] -> sum
    | head :: tail -> sum_list tail (sum +. head)
  in
  let mean = sum_list numbers 0.0 /. float_of_int (List.length numbers) in
  let rec abs_difference_list (numbers : float list) (differences : float list) : float list =
    match numbers with
    | [] -> differences
    | head :: tail -> abs_difference_list tail (differences @ [abs_float (head -. mean)])
  in
  sum_list (abs_difference_list numbers []) 0.0 /. float_of_int (List.length numbers)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     For a given list of input numbers, calculate Mean Absolute Deviation *)
(*     around the mean of this dataset. *)
(*     Mean Absolute Deviation is the average absolute difference between each *)
(*     element and a centerpoint (mean in this case): *)
(*     MAD = average | x - x_mean | *)
(*     >>> mean_absolute_deviation [1.0; 2.0; 3.0; 4.0] *)
(*     1.0 *)
