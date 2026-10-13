let rec mean_absolute_deviation (numbers : float list) : float =
  let rec sum_list = function
    | [] -> 0.0
    | hd::tl -> hd + (sum_list tl) in
  let sum = sum_list numbers in
  let mean =  sum /. (List.length numbers |> float_of_int) in
  let rec mad_list = function
    | [] -> []
    | hd::tl -> abs(hd -. mean) :: (mad_list tl) in
  let mad = mad_list numbers in
  let rec sum_mad_list = function
    | [] -> 0.0
    | hd::tl -> hd +. (sum_mad_list tl) in
  sum_mad_list mad /. (List.length mad |> float_of_int)

(* Test examples *)
let _ = mean_absolute_deviation [1.0; 2.0; 3.0; 4.0]


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
