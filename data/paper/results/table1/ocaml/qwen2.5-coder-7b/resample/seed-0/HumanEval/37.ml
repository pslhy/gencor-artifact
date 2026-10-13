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
  let rec sort lst = 
    let rec merge l1 l2 = 
      match (l1, l2) with 
      | ([], l2) -> l2 
      | (l1, []) -> l1 
      | (h1::t1, h2::t2) -> 
          if h1 <= h2 then h1 :: merge t1 l2 
          else h2 :: merge l1 t2 
    and split lst = 
      let rec aux lst acc1 acc2 = 
        match lst with 
        | [] -> (acc1, acc2) 
        | [x] -> (x :: acc1, acc2) 
        | h::t -> aux t (acc2 @ [h]) acc1 
      in aux lst [] [] 
    in 
    match lst with 
    | [] | [_] -> lst 
    | _ -> 
        let (l1, l2) = split lst in 
        merge (sort l1) (sort l2) 
  in 
  let rec interleave l1 l2 = 
    match (l1, l2) with 
    | ([], l2) -> l2 
    | (l1, []) -> l1 
    | (h1::t1, h2::t2) -> h1 :: h2 :: interleave t1 t2 
  in 
  let (evens, odds) = List.spliti (List.mapi (fun i x -> (i, x)) l) in 
  let sorted_evens = sort (List.map snd evens) in 
  interleave (List.map snd odds) (List.map fst evens)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:30:23: Unbound value "List.spliti" *)
(*     Hint: Did you mean "split"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list = 
  let sort lst = 
    let rec merge l1 l2 = 
      match (l1, l2) with 
      | ([], l2) -> l2 
      | (l1, []) -> l1 
      | (h1::t1, h2::t2) -> 
          if h1 <= h2 then h1 :: merge t1 l2 
          else h2 :: merge l1 t2 
    and split lst = 
      let rec aux lst acc1 acc2 = 
        match lst with 
        | [] -> (acc1, acc2) 
        | [x] -> (x :: acc1, acc2) 
        | h::t -> aux t (acc2 @ [h]) acc1 
      in aux lst [] [] 
    in 
    match lst with 
    | [] | [_] -> lst 
    | _ -> 
        let (l1, l2) = split lst in 
        merge (sort l1) (sort l2) 
  in 
  let rec interleave l1 l2 = 
    match (l1, l2) with 
    | ([], l2) -> l2 
    | (l1, []) -> l1 
    | (h1::t1, h2::t2) -> h1 :: h2 :: interleave t1 t2 
  in 
  let (evens, odds) = List.split (List.mapi (fun i x -> (i, x)) l) in 
  let sorted_evens = sort (List.map snd evens) in 
  interleave (List.map snd odds) (List.map fst evens)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:22:16: Unbound value "sort" *)
(*     Hint: Did you mean "sqrt"? *)
(*     Hint: If this is a recursive definition, *)
(*     you should add the "rec" keyword on line 2 *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list = 
  let rec sort lst = 
    let rec merge l1 l2 = 
      match (l1, l2) with 
      | ([], l2) -> l2 
      | (l1, []) -> l1 
      | (h1::t1, h2::t2) -> 
          if h1 <= h2 then h1 :: merge t1 l2 
          else h2 :: merge l1 t2 
    and split lst = 
      let rec aux lst acc1 acc2 = 
        match lst with 
        | [] -> (acc1, acc2) 
        | [x] -> (x :: acc1, acc2) 
        | h::t -> aux t (acc2 @ [h]) acc1 
      in aux lst [] [] 
    in 
    match lst with 
    | [] | [_] -> lst 
    | _ -> 
        let (l1, l2) = split lst in 
        merge (sort l1) (sort l2) 
  in 
  let rec interleave l1 l2 = 
    match (l1, l2) with 
    | ([], l2) -> l2 
    | (l1, []) -> l1 
    | (h1::t1, h2::t2) -> h1 :: h2 :: interleave t1 t2 
  in 
  let (evens, odds) = List.split (List.mapi (fun i x -> (i, x)) l) in 
  let sorted_evens = sort (List.map snd evens) in 
  interleave (List.map snd odds) (List.map fst evens)

