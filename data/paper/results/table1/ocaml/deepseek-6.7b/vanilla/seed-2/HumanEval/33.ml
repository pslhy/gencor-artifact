let rec sort_third (l : int list) : int list =
  let rec rankable (n : int) : int list =
    if n <= 1 then
      []
    else
      rankable (n - 1) @ [n] in
  let ranked = rankable (List.length l) in
  let swapped = List.map2 (fun x y -> if x mod 3 = 0 then y else x) l ranked in
  let sorted = List.sort (fun x y -> compare x y) swapped in
  sorted


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the indicies that are not divisible by three, while its values at the indicies that are divisible by three are equal *)
(*     to the values of the corresponding indicies of l, but sorted. *)
(*     >>> sort_third [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_third [5; 6; 3; 4; 8; 9; 2] *)
(*     [2; 6; 3; 4; 8; 9; 5] *)
