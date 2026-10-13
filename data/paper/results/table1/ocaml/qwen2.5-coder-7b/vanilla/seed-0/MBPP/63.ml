let rec max_difference (test_list :  (int * int) list) : int = 
  let rec helper pairs max_diff = 
    match pairs with
    | [] -> max_diff
    | (x, y) :: rest -> 
        let diff = abs (x - y) in
        let new_max_diff = if diff > max_diff then diff else max_diff in
        helper rest new_max_diff
  in
  let pairs = List.sort compare (List.flatten (List.map (fun (x, y) -> [(x + y); (x - y)]) test_list)) in
  helper pairs 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
