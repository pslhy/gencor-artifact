
let rec comb_sort (nums : int list) : int list =
  let rec swap_opt (i : int) (l : 'a list) : 'a list option =
    match i, l with
    | 0, _ -> None
    | _, [] -> None
    | _, [_] -> Some l
    | i, x :: (y :: _ as tl) when x > y -> swap_opt (i - 1) (y :: (x :: tl))
    | _, x :: xs -> (
        match swap_opt (i - 1) xs with
        | None -> Some (x :: xs)
        | Some swapped -> Some (x :: swapped))
  in
  let shrink_factor = 1.3 in
  let shrink (n : int) : int =
    let rec go i =
      if n < i then i else go (int_of_float ((float n) /. shrink_factor))
    in
    go (int_of_float ((float n) /. shrink_factor))
  in
  let rec sort (nums : int list) (gap : int) : int list =
    if gap <= 0 then (
      match swap_opt ((List.length nums) - 1) nums with
      | Some sorted -> sorted
      | None -> nums)
    else (
      let rec merge (left : int list) (right : int list) : int list =
        match left, right with
        | [], [] -> []
        | [], ys -> ys
        | xs, [] -> xs
        | x :: xs, y :: ys -> (
            if x <= y then x :: merge xs (y :: ys) else y :: merge (x :: xs) ys)
      in
      let rec merge_pass (nums : int list) (gap : int) : int list =
        match nums with
        | [] -> []
        | [_] -> nums
        | _ ->
            let rec merge_blocks (left : int list) (right : int list) : int list =
              match left, right with
              | [], [] -> []
              | [], ys -> ys
              | xs, [] -> xs
              | x :: xs, y :: ys -> (
                  if x <= y then x :: merge_blocks xs (List.tl (y :: ys))
                  else y :: merge_blocks (x :: xs) ys)
            in
            let halved_gap = gap / 2 in
            merge_blocks nums (List.rev (merge_pass (List.rev (List.tl nums)) halved_gap))
      in
      let next_gap = shrink gap in
      sort (merge_pass nums next_gap) next_gap)
  in
  sort nums ((List.length nums) * (int_of_float ((float (List.length nums)) /. shrink_factor)))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
