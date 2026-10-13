let rec move_zero (num_list : int list) : int list = 
  let rec count_zeros acc = function
    | [] -> acc
    | 0 :: t -> count_zeros (acc + 1) t
    | _ :: t -> count_zeros acc t
  in
  let zero_count = count_zeros 0 num_list in
  let rec remove_zeros acc = function
    | [] -> acc
    | 0 :: t -> remove_zeros acc t
    | x :: t -> remove_zeros (x :: acc) t
  in
  let non_zero_list = remove_zeros [] num_list in
  List.append non_zero_list (List.init zero_count (fun _ -> 0))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to move all zeroes to the end of the given list. *)
