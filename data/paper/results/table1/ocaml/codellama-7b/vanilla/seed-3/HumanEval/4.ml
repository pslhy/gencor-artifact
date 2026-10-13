let rec mean_absolute_deviation (numbers : float list) : float =
  if List.length numbers = 0 then
    0.0
  else
    let mean = List.fold_left (fun acc x -> acc + x) 0.0 numbers /. (List.length numbers |> float_of_int) in
    let deviations = List.map (fun x -> abs_float (x -. mean)) numbers in
    mean_absolute_deviation deviations

let () =
  Printexc.put_printer (Printexc.recording_printer
    (print_string "Hello, World!")
  )


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
