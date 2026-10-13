let rec check_value (dict : (string * int) list) (n : int) : bool =
  match dict with
  | [] -> true
  | (k, v) :: tl -> if v = n then check_value tl n else false

let solution dict n =
  let dict_values = List.map ~f:snd dict in
  List.length (List.filter ~f:(fun x -> x = n) dict_values) = List.length dict_values


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if all values are same in an association list. *)
