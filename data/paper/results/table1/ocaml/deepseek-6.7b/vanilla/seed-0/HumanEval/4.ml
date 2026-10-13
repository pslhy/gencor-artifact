let rec mean_absolute_deviation (numbers : float list) : float =
    let rec sum (numbers : float list) (len : int) : float =
        match numbers with
        | [] -> 0.0
        | hd::tl -> hd +. sum tl len in
    let mean = sum numbers (List.length numbers) /. (float_of_int (List.length numbers)) in
    let rec mad_helper (numbers : float list) (mean : float) (len : int) : float =
        match numbers with
        | [] -> 0.0
        | hd::tl -> abs_float (hd -. mean) +. mad_helper tl mean len in
    mad_helper numbers mean (List.length numbers) /. (float_of_int (List.length numbers))

(* Test case *)
let numbers = [1.0; 2.0; 3.0; 4.0]
let mad = mean_absolute_deviation numbers
let () = Printf.printf "%.2f\n" mad
(* Expected output: 1.0 *)


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
