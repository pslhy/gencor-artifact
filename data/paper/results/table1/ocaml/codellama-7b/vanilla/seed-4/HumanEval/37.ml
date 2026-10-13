let rec sort_even (l : int list) : int list =
  match l with
  | [] -> []
  | [x] -> [x]
  | x :: y :: xs ->
    let l1 = sort_even (x :: xs) in
    let l2 = sort_even (y :: xs) in
    (match l1, l2 with
    | [], _ -> l2
    | _, [] -> l1
    | x :: xs, y :: ys ->
      let n = ref (-1) in
      let rec compare (x : int) (y : int) : bool =
        incr n;
        if x = y then compare (List.nth l1 !n) (List.nth l2 !n)
        else x < y
      in
      let cmp = compare x y in
      if cmp then
        x :: l2
      else
        y :: l1)
in
sort_even


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
