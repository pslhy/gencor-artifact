let rec heap_queue_largest (nums : int list) (n : int) : int list =
  match nums with
  | [] -> []
  | h :: t ->
    let heap =
      List.fold_left (fun heap n -> if h <= n then heap else n :: heap) [] t
    in
    let top = List.hd heap in
    if List.length heap > n
    then top :: heap_queue_largest (List.tl heap) (n + 1)
    else if List.length heap = n
    then top :: []
    else []
  | _ -> failwith "Invalid input"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
