let rec mean_absolute_deviation (numbers : float list) : float = 
    let sum = List.fold_left (+.) 0. numbers in
    let mean = sum /. (float (List.length numbers)) in
    let abs_diff_sum = List.fold_left (fun acc x -> acc +. abs_float (x -. mean)) 0. numbers in
    abs_diff_sum /. (float (List.length numbers))


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
