let rec average_tuple (nums : int list list) : float list =
  match nums with
  | [] -> []
  | (x::xs) ->
    let x_avg = (List.fold_left (+.) 0. x) /. float_of_int (List.length x) in
    x_avg :: average_tuple xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
