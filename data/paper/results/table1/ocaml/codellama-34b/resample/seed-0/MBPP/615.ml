(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
let rec average_tuple (nums : int list list) : float list =
  match nums with
  | [] -> []
  | h :: t -> 
      let (sum, count) = List.fold_left (fun (sum, count) x -> (sum + x, count + 1)) (0, 0) h in
      (sum /. int_of_float count) :: average_tuple t

