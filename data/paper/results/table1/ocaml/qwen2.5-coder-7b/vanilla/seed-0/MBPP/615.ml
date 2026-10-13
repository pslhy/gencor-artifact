let rec average_tuple (nums : int list list) : float list = 
  let rec sum_and_count lst sum count = 
    match lst with 
    | [] -> (sum, count)
    | x::xs -> sum_and_count xs (sum + x) (count + 1)
  in
  let rec averages lst = 
    match lst with 
    | [] -> []
    | x::xs -> (float (sum_and_count x 0 0 |> fst)) /. (float (sum_and_count x 0 0 |> snd)) :: averages xs
  in
  averages nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
