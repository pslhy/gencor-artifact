let rec max_occurrences (nums : int list) : int =
  let count_map =
    List.fold_left (fun m n -> Map.update n (fun v -> if v = None then Some 1 else Some (1 + Option.value v ~default:0)) m)
      Map.empty nums in
  let max_count = Map.fold (fun _ v max -> max |> (if v > max then v else max)) count_map 0 in
  Map.fold (fun k v max -> if v = max then k else max) count_map (List.hd nums)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
