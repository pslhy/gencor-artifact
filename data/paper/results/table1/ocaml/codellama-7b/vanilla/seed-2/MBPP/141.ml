let rec pancake_sort (nums : int list) : int list =
  match nums with
  | [] -> []
  | [_] -> nums
  | _ ->
    let (smallest, rest) = find_smallest nums in
    let flipped_rest = List.rev rest in
    List.append [smallest] (List.rev flipped_rest)

and find_smallest (nums : int list) : (int * int list) =
  match nums with
  | [] -> failwith "Empty list"
  | [smallest] -> (smallest, [])
  | smallest :: rest ->
    let (rest_smallest, rest_rest) = find_smallest rest in
    if smallest < rest_smallest then
      (smallest, rest_rest)
    else
      (rest_smallest, smallest :: rest_rest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
