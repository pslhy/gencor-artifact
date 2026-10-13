let rec mean_absolute_deviation (numbers : float list) : float =
  match numbers with
  | [] -> 0.0
  | x :: xs ->
    let mean = mean_absolute_deviation xs in
    (abs (x - mean) + mean_absolute_deviation xs) /. (float_of_int (List.length xs + 1))

and mean_absolute_deviation (numbers : float list) : float =
  match numbers with
  | [] -> 0.0
  | x :: xs ->
    let mean = mean_absolute_deviation xs in
    (abs (x - mean) + mean_absolute_deviation xs) /. (float_of_int (List.length xs + 1))


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
