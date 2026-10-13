(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
let rec sort_even (l : int list) : int list =
    match l with
    | [] | [_] -> l
    | h1 :: h2 :: t ->
        let (evens, odds) = List.partition (fun x -> x mod 2 = 0) l in
        let sorted_evens = List.sort compare evens in
        let sorted_odds = List.sort compare odds in
        sorted_evens @ sorted_odds
    | _ -> []

